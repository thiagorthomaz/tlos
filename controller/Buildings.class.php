<?php

namespace app\controller;

/**
 * Description of Buildings
 *
 * @author thiago
 */
class Buildings extends \stphp\Controller {

  public function prepareRequest(\stphp\Database\iDataModel &$model){
    
    $request = $this->getRequest();
    $params = $request->getAllParams();
    if (is_null($params)){
      return null;
    }

    foreach ($params as $key => $value){
      $method_name = str_replace("_", "", $key);
      call_user_func(array($model, "set" . ucfirst($method_name)), $value );
    }
    return $model;
  }
  
  public function farm(){

    $request = $this->getRequest();
    $params = $request->getAllParams();
    if ( !isset( $params['title'] ) ){
      $params['title'] = "Farm";
    }
    
    $farm_dao = new \app\model\Buildings\FarmDAO();
    $model_farm = new \app\model\Buildings\Farm();
    $this->prepareRequest($model_farm);
    $buildings = $farm_dao->selectBuilding($params);
    
    $view = new \app\view\View();
    $view->setData(json_encode($buildings));
    return $view;

  }

  public function ironMine(){
    
    $request = $this->getRequest();
    $params = $request->getAllParams();
    if ( !isset( $params['title'] ) ){
      $params['title'] = "Iron mine";
    }
    
    $iron_dao = new \app\model\Buildings\IronMineDAO();
    $model_iron = new \app\model\Buildings\IronMine();
    $this->prepareRequest($model_iron);
    $buildings = $iron_dao->selectBuilding($params);
    
    $view = new \app\view\View();
    $view->setData(json_encode($buildings));
    return $view;
    
  }
  
  public function quarry(){
    
    $request = $this->getRequest();
    $params = $request->getAllParams();
    if ( !isset( $params['title'] ) ){
      $params['title'] = "Quarry";
    }
    
    $quarry_dao = new \app\model\Buildings\QuarryDAO();
    $model_quarry = new \app\model\Buildings\Quarry();
    $this->prepareRequest($model_quarry);
    $buildings = $quarry_dao->selectBuilding($params);
    
    $view = new \app\view\View();
    $view->setData(json_encode($buildings));
    return $view;
    
  }
  
  public function woodcutter(){
    
    $request = $this->getRequest();
    $params = $request->getAllParams();
    
    if ( !isset( $params['title'] ) ){
      $params['title'] = "Woodcutter";
    }
    
    $woodcutter_dao = new \app\model\Buildings\WoodcutterDAO();
    $model_woodcutter = new \app\model\Buildings\Woodcutter();
    $this->prepareRequest($model_woodcutter);
    $buildings = $woodcutter_dao->selectBuilding($params);
    
    $view = new \app\view\View();
    $view->setData(json_encode($buildings));
    return $view;
    
  }
  
  public function foundry(){
    
    $request = $this->getRequest();
    $params = $request->getAllParams();
    
    if ( !isset( $params['title'] ) ){
      $params['title'] = "Foundry";
    }
    
    $foundry_dao = new \app\model\Buildings\FoundryDAO();
    $foundry = new \app\model\Buildings\Foundry();
    $this->prepareRequest($foundry);
    $buildings = $foundry_dao->selectBuilding($params);
    
    $view = new \app\view\View();
    $view->setData(json_encode($buildings));
    return $view;
    
  }
  
  public function mill(){
    
    $request = $this->getRequest();
    $params = $request->getAllParams();
    
    if ( !isset( $params['title'] ) ){
      $params['title'] = "Mill";
    }
    
    $mill_dao = new \app\model\Buildings\MillDAO();
    $mill = new \app\model\Buildings\Mill();
    $this->prepareRequest($mill);
    $buildings = $mill_dao->selectBuilding($params);
    
    $view = new \app\view\View();
    $view->setData(json_encode($buildings));
    return $view;
    
  }
  
  public function sawmill(){
    
    $request = $this->getRequest();
    $params = $request->getAllParams();
    
    if ( !isset( $params['title'] ) ){
      $params['title'] = "Sawmill";
    }
    
    $sawmill_dao = new \app\model\Buildings\SawmillDAO();
    $sawmill = new \app\model\Buildings\Sawmill();
    $this->prepareRequest($sawmill);
    $buildings = $sawmill_dao->selectBuilding($params);
    
    $view = new \app\view\View();
    $view->setData(json_encode($buildings));
    return $view;
    
  }
  
  public function stonemason(){
    
    $request = $this->getRequest();
    $params = $request->getAllParams();
    
    if ( !isset( $params['title'] ) ){
      $params['title'] = "Stonemason";
    }
    
    $stonemason_dao = new \app\model\Buildings\StonemasonDAO();
    $stonemason = new \app\model\Buildings\Stonemason();
    $this->prepareRequest($stonemason);
    $buildings = $stonemason_dao->selectBuilding($params);
    
    $view = new \app\view\View();
    $view->setData(json_encode($buildings));
    return $view;
    
  }
  
  public function werehouse(){
    
    $request = $this->getRequest();
    $params = $request->getAllParams();
    
    if ( !isset( $params['title'] ) ){
      $params['title'] = "Werehouse";
    }
    
    $werehouse_dao = new \app\model\Buildings\WarehouseDAO();
    $werehouse = new \app\model\Buildings\Warehouse();
    $this->prepareRequest($werehouse);
    $buildings = $werehouse_dao->selectBuilding($params);
    
    $view = new \app\view\View();
    $view->setData(json_encode($buildings));
    return $view;
    
  }

  public function hideout(){
    
    $request = $this->getRequest();
    $params = $request->getAllParams();
    
    if ( !isset( $params['title'] ) ){
      $params['title'] = "Hideout";
    }
    
    $hideout_dao = new \app\model\Buildings\HideoutDAO();
    $hideout = new \app\model\Buildings\Hideout();
    $this->prepareRequest($hideout);
    $buildings = $hideout_dao->selectBuilding($params);
    
    $view = new \app\view\View();
    $view->setData(json_encode($buildings));
    return $view;
    
  }
  
}
