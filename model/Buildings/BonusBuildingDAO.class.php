<?php

namespace app\model\Buildings;
/**
 * Description of BonusBuildingDAO
 *
 * @author thiago
 */
class BonusBuildingDAO extends \app\model\Buildings\BuildingDAO {
  
  private $efficiency;
  private $storage;
  
  public function getTable() {
    return "Tab_bonus_building";
  }
  
  public function getEfficiency() {
    return $this->efficiency;
  }

  public function getStorage() {
    return $this->storage;
  }

  public function setEfficiency($efficiency) {
    $this->efficiency = $efficiency;
  }

  public function setStorage($storage) {
    $this->storage = $storage;
  }


  
}
