<?php

namespace app\model\Buildings;

/**
 * Description of IronMineDAO
 *
 * @author thiago
 */
class IronMineDAO extends \app\model\Buildings\BuildingDAO {
  public function getModel() {
    return new \app\model\Buildings\IronMine();
  }

}
