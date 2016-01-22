<?php

namespace app\controller;

/**
 * Description of Panel
 *
 * @author thiago
 */
class Panel extends \stphp\Controller {
  
  private function getCurrentPlayer($to_array = true){
    $player_c = new \app\controller\Player();
    return $player_c->getCurrentPlayer($to_array);
  }

  private function getRegisteredWorld() {
    $player_c = new \app\controller\Player();
    $worlds = $player_c->getRegisteredWorld();
    return $worlds;
  }
  
  public function getCitys(){

    $city_c = new \app\controller\City();
    return $city_c->listByPlyer();

  }
  
  public function player(){

    $response = array();
    
    $response['player'] = $this->getCurrentPlayer();
    $response['worlds'] = $this->getRegisteredWorld();
    $response['citys'] = $this->getCitys();
    
    $view = new \app\view\View();
    $view->setData(json_encode($response));
    return $view;
    
  }
  
}
