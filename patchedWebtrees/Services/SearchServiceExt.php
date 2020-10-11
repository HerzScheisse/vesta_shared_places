<?php

declare(strict_types=1);

namespace Cissee\WebtreesExt\Services;

use Closure;
use Fisharebest\Webtrees\GedcomRecord;
use Fisharebest\Webtrees\Location;
use Fisharebest\Webtrees\Place;
use Fisharebest\Webtrees\Registry;
use Fisharebest\Webtrees\Services\TreeService;
use Fisharebest\Webtrees\Tree;
use Illuminate\Database\Capsule\Manager as DB;
use Illuminate\Database\Query\Builder;
use Illuminate\Database\Query\Expression;
use Illuminate\Database\Query\JoinClause;
use Illuminate\Support\Collection;
use stdClass;

/**
 * Search trees for genealogy records.
 */
class SearchServiceExt {

  /** @var TreeService */
  private $tree_service;

  /**
   * SearchService constructor.
   *
   * @param TreeService $tree_service
   */
  public function __construct(TreeService $tree_service) {
    $this->tree_service = $tree_service;
  }

  public function searchLocationsInPlace(Place $place): Collection
    {
        return DB::table('other')
            ->join('placelinks', static function (JoinClause $query) {
                $query
                    ->on('other.o_file', '=', 'placelinks.pl_file')
                    ->on('other.o_id', '=', 'placelinks.pl_gid');
            })
            ->where('o_type', '=', '_LOC')
            ->where('o_file', '=', $place->tree()->id())
            ->where('pl_p_id', '=', $place->id())
            ->select(['other.*'])
            ->get()
            //->each($this->rowLimiter()) //unlikely to be relevant anyway
            ->map($this->locationRowMapper())
            ->filter(GedcomRecord::accessFilter());
    }
    
  /**
   * Search for shared places.
   *
   * @param Tree[]   $trees
   * @param string[] $search
   * @param int      $offset
   * @param int      $limit
   *
   * @return Collection|Location[]
   */
  public function searchLocations(array $trees, array $search, int $offset = 0, int $limit = PHP_INT_MAX): Collection {
    $query = DB::table('other')
            ->where('o_type', '=', '_LOC');

    $this->whereTrees($query, 'o_file', $trees);
    $this->whereSearch($query, 'o_gedcom', $search);
    
    return $this->paginateQuery($query, $this->locationRowMapper(), GedcomRecord::accessFilter(), $offset, $limit);
  }
  
  /**
   * Search for shared places.
   *
   * @param Tree[]   $trees
   * @param string[] $search
   * @param int      $offset
   * @param int      $limit
   *
   * @return Collection|Location[]
   */
  public function searchLocationsEOL(array $trees, array $search, int $offset = 0, int $limit = PHP_INT_MAX): Collection {
    $query = DB::table('other')
            ->where('o_type', '=', '_LOC');

    $this->whereTrees($query, 'o_file', $trees);
    $this->whereSearchEOL($query, 'o_gedcom', $search);
    
    return $this->paginateQuery($query, $this->locationRowMapper(), GedcomRecord::accessFilter(), $offset, $limit);
  }
  
  public function searchTopLevelLocations(array $trees, int $offset = 0, int $limit = PHP_INT_MAX): Collection {
    //not useful because a location may have links to parent locations for some dates
    //while being a top-level location at some other date
    /*
    $query = DB::table('other')
            ->leftJoin('link', static function (JoinClause $join): void {
                $join
                    ->on('l_file', '=', 'o_file')                    
                    ->on('l_from', '=', 'o_id')
                    ->where('l_type', '=', '_LOC');
            })
            ->whereNull('l_from')
            ->where('o_type', '=', '_LOC');

    $this->whereTrees($query, 'o_file', $trees);    
    */
    
    //a top-level location is a location linked to at least one top-level (i.e. parentless) place
    /* @var $query Builder */
    $query = DB::table('other')
            ->join('placelinks', static function (JoinClause $join): void {
                $join
                    ->on('pl_file', '=', 'o_file')                    
                    ->on('pl_gid', '=', 'o_id');
            })
            ->join('places', static function (JoinClause $join): void {
                $join
                    ->on('p_id', '=', 'pl_p_id');
            })
            ->where('p_parent_id', '=', 0)
            ->where('o_type', '=', '_LOC');

    $this->whereTrees($query, 'o_file', $trees);
    $query->distinct();
    $query->select(['o_id','o_file','o_type','o_gedcom']); //must select explicitly, otherwise '*' which messes up the distinct
    
    return $this->paginateQuery($query, $this->locationRowMapper(), GedcomRecord::accessFilter(), $offset, $limit);
  }
  
  private function locationRowMapper(): Closure
    {
        return function (stdClass $row): Location {
            $tree = $this->tree_service->find((int) $row->o_file);
            return Registry::locationFactory()->mapper($tree)($row);
        };
    }

  /**
   * Paginate a search query.
   *
   * @param Builder $query      Searches the database for the desired records.
   * @param Closure $row_mapper Converts a row from the query into a record.
   * @param Closure $row_filter
   * @param int     $offset     Skip this many rows.
   * @param int     $limit      Take this many rows.
   *
   * @return Collection
   */
  private function paginateQuery(Builder $query, Closure $row_mapper, Closure $row_filter, int $offset, int $limit): Collection {
    $collection = new Collection();
    
    foreach ($query->cursor() as $row) {
      $record = $row_mapper($row);
      // If the object has a method "canShow()", then use it to filter for privacy.
      if ($row_filter($record)) {
        if ($offset > 0) {
          $offset--;
        } else {
          if ($limit > 0) {
            $collection->push($record);
          }

          $limit--;

          if ($limit === 0) {
            break;
          }
        }
      }
    }

    return $collection;
  }

  /**
   * Apply search filters to a SQL query column.  Apply collation rules to MySQL.
   *
   * @param Builder           $query
   * @param Expression|string $field
   * @param string[]          $search_terms
   */
  private function whereSearch(Builder $query, $field, array $search_terms): void {
    if ($field instanceof Expression) {
      $field = $field->getValue();
    }

    foreach ($search_terms as $search_term) {
      $query->where(new Expression($field), 'LIKE', '%' . addcslashes($search_term, '\\%_') . '%');
    }
  }

  private function whereSearchEOL(Builder $query, $field, array $search_terms): void {
    if ($field instanceof Expression) {
      $field = $field->getValue();
    }

    foreach ($search_terms as $search_term) {
      $query
              ->where(new Expression($field), 'LIKE', '%' . addcslashes($search_term . "\n", '\\%_') . '%') //EOL
              ->orWhere(new Expression($field), 'LIKE', '%' . addcslashes($search_term, '\\%_')); //EOL via end of entire entry
    }
  }
  
  /**
   * @param Builder $query
   * @param string  $tree_id_field
   * @param Tree[]  $trees
   */
  private function whereTrees(Builder $query, string $tree_id_field, array $trees): void {
    $tree_ids = array_map(function (Tree $tree) {
      return $tree->id();
    }, $trees);

    $query->whereIn($tree_id_field, $tree_ids);
  }
}
