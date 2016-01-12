<?php

namespace app\model\Buildings;

/**
 * Description of WarehouseDAO
 *
 * @author thiago
 */
class WarehouseDAO extends \app\model\Buildings\StorageBuildingDAO {

  
  public function getModel() {
    return new \app\model\Buildings\Warehouse();
  }

}
