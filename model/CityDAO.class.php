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
  
  public function selectByPlayer(){    
    $player_dao = new \app\model\PlayerDAO();
    $player = $player_dao->getCurrentLoggedPlayer();
    
    $params = array("id_player" => $player->getId());
    $sql = "select * from " . $this->getTable() . " where id_player = :id_player;";
    
    $result = $this->sendQuery($sql, $params);
    $rs = $result->getResultSet();

    return $rs;
    
  }
  
  public function selectByParams($params){
    
    $sql = "select * from " . $this->getTable() . $this->where($params);
    $send_result = $this->sendQuery($sql, $params);
    $rs = $send_result->getResultSet();
    return $rs;
    
  }

}
