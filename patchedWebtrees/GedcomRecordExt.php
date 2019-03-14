<?php

namespace Cissee\WebtreesExt;

use Exception;
use Fisharebest\Webtrees\Gedcom;
use Fisharebest\Webtrees\GedcomRecord;
use Fisharebest\Webtrees\Tree;
use Illuminate\Database\Capsule\Manager as DB;
use Fisharebest\Webtrees\Auth;
use Fisharebest\Webtrees\Family;
use Fisharebest\Webtrees\Individual;
use Fisharebest\Webtrees\Media;
use Fisharebest\Webtrees\Note;
use Fisharebest\Webtrees\Repository;
use Fisharebest\Webtrees\Source;
use stdClass;

//refactored part of GedcomRecord:
//getInstance extracted and extended
class GedcomRecordExt extends GedcomRecord {

  /** @var GedcomRecord[][] Allow getInstance() to return references to existing objects */
  public static $gedcom_record_cache;

  /** @var stdClass[][] Fetch all pending edits in one database query */
  public static $pending_record_cache;
  //[RC] added start
  protected static $factories = [];

  public static function addFactory(string $type, GedcomRecordFactory $factory) {
    self::$factories[$type] = $factory;
  }

  //[RC] added end

  /**
   * Get an instance of a GedcomRecord object. For single records,
   * we just receive the XREF. For bulk records (such as lists
   * and search results) we can receive the GEDCOM data as well.
   *
   * @param string      $xref
   * @param Tree        $tree
   * @param string|null $gedcom
   *
   * @throws Exception
   * @return GedcomRecord|Individual|Family|Source|Repository|Media|Note|null
   */
  public static function getInstance(string $xref, Tree $tree, string $gedcom = null) {
    $tree_id = $tree->id();

    // Is this record already in the cache?
    if (isset(self::$gedcom_record_cache[$xref][$tree_id])) {
      return self::$gedcom_record_cache[$xref][$tree_id];
    }

    // Do we need to fetch the record from the database?
    if ($gedcom === null) {
      $gedcom = static::fetchGedcomRecord($xref, $tree_id);
    }

    // If we can edit, then we also need to be able to see pending records.
    if (Auth::isEditor($tree)) {
      if (!isset(self::$pending_record_cache[$tree_id])) {
        // Fetch all pending records in one database query
        self::$pending_record_cache[$tree_id] = [];
        $rows = DB::table('change')
                ->where('gedcom_id', '=', $tree_id)
                ->where('status', '=', 'pending')
                ->orderBy('change_id')
                ->select(['xref', 'new_gedcom'])
                ->get();

        foreach ($rows as $row) {
          self::$pending_record_cache[$tree_id][$row->xref] = $row->new_gedcom;
        }
      }

      $pending = self::$pending_record_cache[$tree_id][$xref] ?? null;
    } else {
      // There are no pending changes for this record
      $pending = null;
    }

    // No such record exists
    if ($gedcom === null && $pending === null) {
      return null;
    }

    // No such record, but a pending creation exists
    if ($gedcom === null) {
      $gedcom = '';
    }

    // Create the object
    if (preg_match('/^0 @(' . Gedcom::REGEX_XREF . ')@ (' . Gedcom::REGEX_TAG . ')/', $gedcom . $pending, $match)) {
      $xref = $match[1]; // Collation - we may have requested I123 and found i123
      $type = $match[2];
    } elseif (preg_match('/^0 (HEAD|TRLR)/', $gedcom . $pending, $match)) {
      $xref = $match[1];
      $type = $match[1];
    } elseif ($gedcom . $pending) {
      throw new Exception('Unrecognized GEDCOM record: ' . $gedcom);
    } else {
      // A record with both pending creation and pending deletion
      $type = static::RECORD_TYPE;
    }

    //[RC] added start
    $factory = self::$factories[$type] ?? null;
    if ($factory !== null) {
      $record = $factory->createRecord($xref, $gedcom, $pending, $tree);

      // Store it in the cache
      self::$gedcom_record_cache[$xref][$tree_id] = $record;

      return $record;
    }
    //[RC] added end

    switch ($type) {
      case 'INDI':
        $record = new Individual($xref, $gedcom, $pending, $tree);
        break;
      case 'FAM':
        $record = new Family($xref, $gedcom, $pending, $tree);
        break;
      case 'SOUR':
        $record = new Source($xref, $gedcom, $pending, $tree);
        break;
      case 'OBJE':
        $record = new Media($xref, $gedcom, $pending, $tree);
        break;
      case 'REPO':
        $record = new Repository($xref, $gedcom, $pending, $tree);
        break;
      case 'NOTE':
        $record = new Note($xref, $gedcom, $pending, $tree);
        break;
      default:
        $record = new self($xref, $gedcom, $pending, $tree);
        break;
    }

    // Store it in the cache
    self::$gedcom_record_cache[$xref][$tree_id] = $record;

    return $record;
  }

  public static function clearCache() {
    // Clear the cache
    self::$gedcom_record_cache = [];
    self::$pending_record_cache = [];
  }

}
