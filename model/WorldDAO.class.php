<?php

namespace app\model;

/**
 * Description of WorldDAO
 *
 * @author thiago
 */
class WorldDAO extends \app\model\DAO{

  public function getModel() {
    return new \app\model\World();
  }

  public function getTable() {
    return "Tab_world";
  }
  
  public function selectByPlayer(\app\model\Player $player){
    $id = $player->getId();
    $sql = "";
    $sql .= "select * from Tab_player_has_world where id_player = :id_player";
    $rs = $this->sendQuery($sql, array("id_player" => $id));
    $player_in_worlds = $rs->getResultSet();
    
    foreach ($player_in_worlds as $pw){
      $model = $this->getModel();
      $model->setId($pw['id_world']);
      $worlds = $this->select($model);
      return $worlds;
    }
    
    return array();

  }

}
