<?php

namespace app\model;

/**
 * Description of CityHasBuildingDAO
 *
 * @author thiago
 */
class CityHasBuildingDAO extends \app\model\DAO {
  public function getModel() {
    return new \app\model\CityHasBuilding();
  }

  public function getTable() {
    return "Tab_city_Tab_building";
  }
  
  /**
   * 
   * @param type $params
   */
  public function addBuilding(\app\model\CityHasBuilding $cb){
    $params = array('id_city' => $cb->getId_city(), 'id_building'=> $cb->getId_building(), 'x' => $cb->getX(),'y' => $cb->getY(),'z' =>$cb->getZ());
    $sql = "insert into Tab_city_Tab_building (id_city, id_building, x,y,z) values (:id_city, :id_building, :x,:y,:z)";
    $result = $this->sendQuery($sql, $params);
    if ( ($result->getAffected_rows() == 1) && empty($result->getError_message()) ){
      return true;
    }else {
      return $result->getError_message();
    }
    
  }

}
