<?php

namespace app\controller;

/**
 * Description of City
 *
 * @author thiago
 */
class City extends \stphp\Controller{
  
  public function listByPlyer(){
    $city_dao = new \app\model\CityDAO();
    return $city_dao->selectByPlayer();
  }

  public function create(){
    $request = $this->getRequest();
    $params = $request->getAllParams();

    $player_c = new \app\controller\Player();
    $player = $player_c->getCurrentPlayer();
    
    $id_player = $player->getId();
    
    if (!isset($params['city']) && !isset($params['city']['city_name'])){
      throw new \app\exception\AppException("Fail in create a new City, try refresh the page.");
    }
    
    if (empty($params['city']['city_name'])){
      throw new \app\exception\AppException("City name can't be empty.");
    }
    
    $city = new \app\model\City();
    $city_dao = new \app\model\CityDAO();

    $city->setCity_name($params['city']['city_name']);
    $city->setId_player($id_player);
    $city->setId_world($params['city']['id_world']);
    $city->setX(1);
    $city->sety(1);
    $city->setz(1);
    $city->setAmount_stone(250);
    $city->setAmount_wood(500);
    $city->setAmount_iron(100);
    
    $city_dao->insert($city);

    $response = array("city_id" => $city->getId(), 'success' => !is_null($city->getId()));
    $view = new \app\view\View();
    $view->setData(json_encode($response));
    return $view;
    
  }
  
}
