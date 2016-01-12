<?php

namespace app\model\Buildings;

/**
 * Description of BuildingDAO
 *
 * @author thiago
 */
abstract class BuildingDAO extends \app\model\DAO {
  
  public function selectBuilding($params, $limit = 100) {  
    $sql = "select * from " . $this->getTable();
    $sql .= $this->where($params);
    return $this->sendQuery($sql, $params);
  }

  public function getTable() {
    return "Tab_building";
  }

}
