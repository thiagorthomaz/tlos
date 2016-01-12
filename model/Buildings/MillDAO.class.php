<?php

namespace app\model\Buildings;

namespace app\model\Buildings;

/**
 * Description of MillDAO
 *
 * @author thiago
 */
class MillDAO extends \app\model\Buildings\BonusBuildingDAO {
  public function getModel() {
    return new \app\model\Buildings\Mill();
  }

}
