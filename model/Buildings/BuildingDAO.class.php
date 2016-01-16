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
    $rs = $this->sendQuery($sql, $params);
    return $rs->getResultSet();
  }

  public function getTable() {
    return "Tab_building";
  }

}
