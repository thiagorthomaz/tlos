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


  public function buildings(){
    
    $buildings_c = new \app\controller\Buildings();
    $return = array();

    $return['farm'] = $buildings_c->farm(false);
    $return['foundry'] = $buildings_c->foundry(false);
    $return['hideout'] = $buildings_c->hideout(false);
    $return['ironMine'] = $buildings_c->ironMine(false);
    $return['mill'] = $buildings_c->mill(false);
    $return['quarry'] = $buildings_c->quarry(false);
    $return['sawmill'] = $buildings_c->sawmill(false);
    $return['stonemason'] = $buildings_c->stonemason(false);
    $return['werehouse'] = $buildings_c->werehouse(false);
    $return['woodcutter'] = $buildings_c->woodcutter(false);

    $view = new \app\view\View();
    $view->setData(json_encode(array("buildings" => $return)));
    return $view;

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
