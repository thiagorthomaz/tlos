<?php

namespace app\model;

/**
 * Description of CityInstanceDAO
 *
 * @author thiago
 */
class CityInstanceDAO extends \app\model\DAO {
  
  public function getModel() {
    return new \app\model\CityInstance();
  }

  public function getTable() {
    return "Tab_city_instance";
  }
  
  public function selectAll(\app\model\City $city) {
    
    $id_city = $city->getId();
    $params = array("id_city" => $id_city );
    $sql = "select * from " . $this->getTable() . " where id_city = :id_city";
    $send_result = $this->sendQuery($sql, $params);
    $rs = $send_result->getResultSet();
    print_r($rs);
    exit;
    return array();
  }

}
