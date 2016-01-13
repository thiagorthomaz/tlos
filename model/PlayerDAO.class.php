<?php

namespace app\model;

/**
 * Description of Player
 *
 * @author thiago
 */
class PlayerDAO extends \app\model\DAO{

  public function getTable() {
    return "Tab_player";
  }

  /**
   * Encrypt a password digited by the user
   * 
   * @param string $password
   * @return string
   */
  public function encryptPassword($password){
    return password_hash($password, PASSWORD_DEFAULT);
  }
  
  /**
   * Verify if the password digited by the user is correctly
   * 
   * @param string $password
   * @param string $hash
   * @return boolean
   */
  public function verifyPassword($password, $hash){
    return password_verify($password, $hash);
  }

  public function getModel() {
    return new \app\model\Player();
  }
  
  public function login(\app\model\Player $player) {
    
    $params = array("nickname" => $player->getNickname());
    $query = "select * from " . $this->getTable() . " where nickname = :nickname";
    $result = $this->sendQuery($query, $params);
    
    $player_base = $result[0];
    
    if ($this->verifyPassword($player->getPassword(), $player_base['password'])){
      $session = new \stphp\Session();
      $player->setId($player_base["id"]);
      $player->setEmail($player_base["email"]);
      $player->setPassword(null);
      $session->write("current_player", $player->getNickname());
      $session->write($player->getNickname(), array("player" => $player));
      return true;
    } else {
      throw new \app\exception\AuthenticationException("Invalid user or password!");
    }
    
  }
  
  public function getCurrentLoggedPlayer(){
    $session = new \stphp\Session();
    $current_player = $session->read("current_player");
    $player = $session->read($current_player);
    return $player['player'];
  }

  public function passwordCorrectly($input_password, $hash){
    return password_verify($input_password, $hash);
  }

}
