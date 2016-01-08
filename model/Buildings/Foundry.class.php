<?php

namespace app\model\Buildings;

/**
 * Increase the efficiency of bordering Ore mines
 *
 * @author thiago
 */
class Foundry extends \app\model\Buildings\BonusBuilding {

  public function getCompatibleBuilding() {
    return "IronMine";
  }

  public function getResource() {
    return "bonus";
  }


}
