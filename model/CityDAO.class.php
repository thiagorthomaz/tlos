<?php

namespace app\model;
/**
 * Description of CityDAO
 *
 * @author thiago
 */
class CityDAO extends \app\model\DAO {
  
  
  public function getModel() {
    return new \app\model\City();
  }

  public function getTable() {
    return "Tab_city";
  }
  
  public function selectCurrent(){
    $player_dao = new \app\model\PlayerDAO();
    $player = $player_dao->getCurrentLoggedPlayer();
    $params = array( "id_player" => $player->getId());
    
    $sql = "select * from " . $this->getTable() . " where id_player = :id_player";
    $send_result = $this->sendQuery($sql, $params);
    echo $sql;
    print_r($params);
    $rs = $send_result->getResultSet();
    print_r($rs);
    exit;
    
  }

}
