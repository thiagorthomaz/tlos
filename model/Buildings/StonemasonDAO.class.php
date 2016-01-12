<?php

namespace app\model\Buildings;

/**
 * Description of StonemasonDAO
 *
 * @author thiago
 */
class StonemasonDAO extends \app\model\Buildings\BonusBuildingDAO {

  public function getModel() {
    return new \app\model\Buildings\Stonemason();
  }

}
