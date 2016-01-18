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
    
    $request = $this->getRequest();
    $player = new \app\model\Player();
    $player_dao = new \app\model\PlayerDAO();
    $view = new \app\view\View();
    
    $params = $request->getAllParams();
    
    $errors = array();
    
    if (!isset($params['nickname'])) {
      $errors['errors']['nickname'] = "Nickname can't be blank";
    }

    if (!isset($params['password'])){
      $errors['errors']['password'] = "Nickname can't be blank";
    }
    $password = $params['password'];
    $player->setNickname($params['nickname']);
      
    if ( isset($params['register']) && $params['register']){
      if (!isset($params['email'])){
        $errors['errors']['email'] = "Nickname can't be blank";
      }

      $player->setEmail($params['email']);
      $player->setPassword($player_dao->encryptPassword($password));
      
      if (count($errors) > 0){
        $errors['errors']['email'] = "E-mail can't be blank";
      } else {
        $valid = $player_dao->isValidNewPlayer($player);
        $player_dao->insert($player);  
      }

    }

    if (count($errors) > 0){
      $view->setData(json_encode($errors));
    } else {
      $player->setPassword($password);
      $logged = $player_dao->login($player);
      $view->setData(json_encode(array("logged" => $logged)));
    }
    
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
  
  public function createWorld(){
    
    $player_dao = new \app\model\PlayerDAO();
    $player = $this->getCurrentPlayer();
    $id_player = $player->getId();
    
    $request = $this->getRequest();
    $params = $request->getAllParams();
    $params["id_player"] = $id_player;
    
    $registered = $player_dao->registerWorld($params);
    
    $result["created"] = $registered;
    $result["world"] = $params["id_world"];
    $view = new \app\view\View();
    $view->setData(json_encode(array("result" => $result)));
    return $view;
    
  }
  
  public function update() {
    
  }

}
