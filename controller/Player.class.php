<?php

namespace app\controller;

/**
 * Description of Player
 *
 * @author thiago
 */
class Player extends \stphp\Controller {
  
  
  public function delete() {
    
  }

  public function get() {
    
  }

  public function save() {

    $player = new \app\model\Player();
    $player_dao = new \app\model\PlayerDAO();
    $this->prepareRequest($player);

    $encrypted_pass = $player_dao->encryptPassword($player->getPassword());
    $player->setPassword($encrypted_pass);
    $player_dao->insert($player);
    
    exit;
    
  }

  public function login(){
    
    $player = new \app\model\Player();
    $player_dao = new \app\model\PlayerDAO();
    $this->prepareRequest($player);
    
    $logged = $player_dao->login($player);
    
    $view = new \app\view\View();
    $view->setData(json_encode(array("logged" => $logged)));
    return $view;
    
  }

  public function getCurrentPlayer($to_array = false){
    
    $player_dao = new \app\model\PlayerDAO();
    $player = $player_dao->getCurrentLoggedPlayer();
    if ($to_array){
      $player_array = $player_dao->modeltoArray($player);
      return $player_array;
    }
    
    return $player;

  }
  
  public function update() {
    
  }

}
