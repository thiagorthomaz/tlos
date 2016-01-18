<?php

namespace app\controller;

/**
 * Description of GameCore
 *
 * @author thiago
 */
class Gamecore extends \stphp\Controller {
  
  public function city(){
    
    
    $city_dao = new \app\model\CityDAO();
    $city = $city_dao->selectCurrent();
    
    $city_instance_dao = new \app\model\CityInstanceDAO();
    $city_instance = $city_instance_dao->selectAll();

    $view = new \app\view\View();
    $view->setData(json_encode(array("result" => $city_instance)));
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
