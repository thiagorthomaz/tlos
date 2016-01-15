<?php

namespace app\controller;

/**
 * Description of World
 *
 * @author thiago
 */
class World extends \stphp\Controller {
  
  public function listAll(){

    $world_dao = new \app\model\WorldDAO();
    $worlds = $world_dao->selectAll();

    $view = new \app\view\View();
    $view->setData(json_encode(array( "avaliable_worlds" => $worlds)));
    return $view;
    
  }
  
  public function user(){
    
    $player_c = new \app\controller\Player();
    $player = $player_c->getCurrentPlayer();

    $world_dao = new \app\model\WorldDAO();
    $worlds = $world_dao->selectByPlayer($player);
    
    $view = new \app\view\View();
    $view->setData(json_encode($worlds));
    return $view;
    
  }
  

}
