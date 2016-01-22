<?php

namespace app\model\Buildings;
/**
 * Description of BonusBuildingDAO
 *
 * @author thiago
 */
abstract class BonusBuildingDAO extends \app\model\Buildings\BuildingDAO {
  
  public function selectBuilding($params, $limit = 100) {  
    $sql = "select * from " . $this->getTable() . " t1";
    $sql .= "\njoin " . parent::getTable() . " p1";
    $sql .= "\non p1.level = t1.id";
    $sql .= $this->where($params);
    $result = $this->sendQuery($sql, $params);
    $rs = $result->getResultSet();
    return $rs;
  }
  
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
