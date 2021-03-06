<?php

namespace app\controller;

/**
 * Description of GameCore
 *
 * @author thiago
 */
class Gamecore extends \stphp\Controller {
  
  private function getParams(){
    $request = $this->getRequest();
    $params = $request->getAllParams();
    return $params;
  }
  
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
  
  private function getcityBuildings(){
    $city_c = new \app\controller\City();
    $city_buildings = $city_c->cityBuildings();
    return $city_buildings;
  }
  public function cityBuildings(){
    
    $city_buildings = $this->getcityBuildings();
    $view = new \app\view\View();
    $view->setData(json_encode(array("city_buildings" => $city_buildings)));
    return $view;

  }
  
  public function registerBuilding(){


    $params = $this->getParams();
    
    if (!isset($params['id_city'])){
      throw new \app\exception\AppException('City undefined.');
    }
    
    if (!isset($params['tile_selected'])){
      throw new \app\exception\AppException('Tile undefined.');
    }
    
    
    $tile = $params['tile_selected'];
    $building = $params['building_selected'];
    
    $id_city = $params['id_city'];
    
    if ( !isset($tile['x']) || !isset($tile['y']) ){
      throw new \app\exception\AppException('Please, select where you want to put the building.');
    }
    
    $cb = new \app\model\CityHasBuilding();
    $cb->setId_city($id_city);
    $cb->setId_building($building["id"]);
    $cb->setX($tile['x']);
    $cb->setY($tile['y']);
    $cb->setZ(0);
    $city_building = new \app\model\CityHasBuildingDAO();
    $added = $city_building->addBuilding($cb);
    
    $view = new \app\view\View();
    
    
    if ($added){
      $view->setData(json_encode(array("added" => true)));
    }else {
      $view->setData(json_encode(array("error" => $added)));  
    }

    return $view;
  }
  
    
  }
