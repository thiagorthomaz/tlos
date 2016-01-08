<?php

namespace app\model\Buildings;

/**
 * Increase the efficiency of bordering Woodcutter
 *
 * @author thiago
 */
class Sawmill extends \app\model\Buildings\BonusBuilding {

  public function getCompatibleBuilding() {
    return "Woodcutter";
  }

  public function getResource() {
    return "bonus";
  }

}
