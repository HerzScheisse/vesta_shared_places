<?php

use Composer\Autoload\ClassLoader;

$loader = new ClassLoader();
$loader->addPsr4('Cissee\\Webtrees\\Module\\SharedPlaces\\', __DIR__);
$loader->addPsr4('Cissee\\WebtreesExt\\', __DIR__ . "/patchedWebtrees");
$loader->addPsr4('Cissee\\WebtreesExt\\Controller\\', __DIR__ . "/patchedWebtrees/Controller");
$loader->addPsr4('Cissee\\WebtreesExt\\Functions\\', __DIR__ . "/patchedWebtrees/Functions");
$loader->register();


$extend = !class_exists("Fisharebest\Webtrees\GedcomRecord", false);

if ($extend) {
  //explicitly load webtrees replacements so that the original files aren't autoloaded
  //(e.g. when routing via ModuleController)
  require_once __DIR__ . '/replacedWebtrees/app/GedcomRecord.php';

  //these adjustments allow use to re-use existing code (webtrees controllers using GedcomRecord::getInstance)
  //where we only have to adjust routes (e.g. for editing shared places, 
  //where the editing itself is straightforward, but we want to return to our specific view of the shared place)

  $extend2 = !class_exists("Fisharebest\Webtrees\Html", false);
  if ($extend2) {
    require_once __DIR__ . '/replacedWebtrees/Html.php';
  }

  //
  //other adjustments
  //
  //adjustments for MAP
  $extend3 = !class_exists("Fisharebest\Webtrees\Config", false);
  if ($extend3) {
    require_once __DIR__ . '/replacedWebtrees/Config.php';
  }

  //adjustments for MAP
  $extend4 = !class_exists("Fisharebest\Webtrees\Functions\FunctionsEdit", false);
  if ($extend4) {
    require_once __DIR__ . '/replacedWebtrees/Functions/FunctionsEdit.php';
  }
} else {
  //must use original files because they are already loaded
  //(e.g. when routing via IndividualController)
  //thus cannot use GedcomRecord::getInstance etc here
}

