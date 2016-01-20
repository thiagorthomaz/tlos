<?php

namespace app\controller;

/**
 * Description of GameCore
 *
 * @author thiago
 */
class Gamecore extends \stphp\Controller {
  
  public function city(){

    $player_c = new \app\controller\Player();
    $player = $player_c->getCurrentPlayer();

    $request = $this->getRequest();
    $params = $request->getAllParams();
    $params["id_player"] = $player->getId();
    $params["id"] = $params["id_city"];
    unset($params["id_city"]);

    $city_dao = new \app\model\CityDAO();
    $city = $city_dao->selectByParams($params);

    $view = new \app\view\View();
    $view->setData(json_encode(array("city" => $city[0])));
    return $view;

  }


  public function process(){
    
    $request = $this->getRequest();
    print_r($request->getAllParams());
    exit;

  }
  
  
  public function buildConstructor(){
    
    $request = $this->getRequest();
    print_r($request->getAllParams());
    exit;

  }
  
  public function buildDestructor(){
    
    $request = $this->getRequest();
    print_r($request->getAllParams());
    exit;

  }
  
  public function resourceDestructor(){
    
    $request = $this->getRequest();
    print_r($request->getAllParams());
    exit;

  }
  
  
  
}
