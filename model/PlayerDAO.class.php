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

}
