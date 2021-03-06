<?php

namespace app\model\Buildings;

/**
 * Increase the efficiency of bordering Farms
 *
 * @author thiago
 */
class Mill extends \app\model\Buildings\BonusBuilding {
  
  public function getCompatibleBuilding() {
    return "farm";
  }

  public function getResource() {
    return "bonus";
  }

}
