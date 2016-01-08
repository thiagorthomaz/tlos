<?php

namespace app\model\Buildings;

/**
 * Description of BuildingDAO
 *
 * @author thiago
 */
class BuildingDAO extends \app\model\DAO {
  
  public function selectBuilding($type, $limit = 100) {

    $sql = "select * from " . $this->getTable()
        . " WHERE title = '" . $type . "'"
        . " LIMIT " . $limit;

    $STH = $this->connection->query($sql);
    $STH->setFetchMode(\PDO::FETCH_ASSOC);
    
    $result_list = array();
    
    while($result = $STH->fetch()) {
      $result_list[] = $result;
    }
    
    return $result_list;
    
  }

  public function getTable() {
    return "Tab_building";
  }

}
