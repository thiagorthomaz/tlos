<?php

namespace app\model\Buildings;

/**
 * Increase the efficiency of bordering Quarries
 *
 * @author thiago
 */
class Stonemason extends \app\model\Buildings\BonusBuilding{

  public function getCompatibleBuilding() {
    return "Quarry";
  }

  public function getResource() {
    return "bonus";
  }

}
