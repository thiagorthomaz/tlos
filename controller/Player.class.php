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

  public function update() {
    
  }

}
