<?php

namespace app\controller;

/**
 * Description of Panel
 *
 * @author thiago
 */
class Panel extends \stphp\Controller {
  
  private function getCurrentPlayer(){
    $player_c = new \app\controller\Player();
    return $player_c->getCurrentPlayer(true);
  }
  public function player(){
    
    $response = array();

    $response['player'] = $this->getCurrentPlayer();
    $response['worlds'] = array();
    
    $view = new \app\view\View();
    $view->setData(json_encode($response));
    return $view;
    
  }
  
}
