<?php

namespace app\controller;

/**
 * Description of Buildings
 *
 * @author thiago
 */
class Buildings extends \stphp\Controller {

  public function farm($toJson = true){

    $request = $this->getRequest();
    $params = $request->getAllParams();
    if ( !isset( $params['title'] ) ){
      $params['title'] = "Farm";
    }
    
    $farm_dao = new \app\model\Buildings\FarmDAO();
    $model_farm = new \app\model\Buildings\Farm();
    $this->prepareRequest($model_farm);
    $buildings = $farm_dao->selectBuilding($params);
    
    if ($toJson){
      $view = new \app\view\View();
      $view->setData(json_encode($buildings));
      return $view;
    } else {
      return $buildings;
    }

  }

  public function ironMine($toJson = true){
    
    $request = $this->getRequest();
    $params = $request->getAllParams();
    if ( !isset( $params['title'] ) ){
      $params['title'] = "Iron mine";
    }
    
    $iron_dao = new \app\model\Buildings\IronMineDAO();
    $model_iron = new \app\model\Buildings\IronMine();
    $this->prepareRequest($model_iron);
    $buildings = $iron_dao->selectBuilding($params);
    
    if ($toJson){
      $view = new \app\view\View();
      $view->setData(json_encode($buildings));
      return $view;
    } else {
      return $buildings;
    }
    
  }
  
  public function quarry($toJson = true){
    
    $request = $this->getRequest();
    $params = $request->getAllParams();
    if ( !isset( $params['title'] ) ){
      $params['title'] = "Quarry";
    }
    
    $quarry_dao = new \app\model\Buildings\QuarryDAO();
    $model_quarry = new \app\model\Buildings\Quarry();
    $this->prepareRequest($model_quarry);
    $buildings = $quarry_dao->selectBuilding($params);
    
    if ($toJson){
      $view = new \app\view\View();
      $view->setData(json_encode($buildings));
      return $view;
    } else {
      return $buildings;
    }
    
  }
  
  public function woodcutter($toJson = true){
    
    $request = $this->getRequest();
    $params = $request->getAllParams();
    
    if ( !isset( $params['title'] ) ){
      $params['title'] = "Woodcutter";
    }
    
    $woodcutter_dao = new \app\model\Buildings\WoodcutterDAO();
    $model_woodcutter = new \app\model\Buildings\Woodcutter();
    $this->prepareRequest($model_woodcutter);
    $buildings = $woodcutter_dao->selectBuilding($params);
    
    if ($toJson){
      $view = new \app\view\View();
      $view->setData(json_encode($buildings));
      return $view;
    } else {
      return $buildings;
    }
    
  }
  
  public function foundry($toJson = true){
    
    $request = $this->getRequest();
    $params = $request->getAllParams();
    
    if ( !isset( $params['title'] ) ){
      $params['title'] = "Foundry";
    }
    
    $foundry_dao = new \app\model\Buildings\FoundryDAO();
    $foundry = new \app\model\Buildings\Foundry();
    $this->prepareRequest($foundry);
    $buildings = $foundry_dao->selectBuilding($params);
    
    if ($toJson){
      $view = new \app\view\View();
      $view->setData(json_encode($buildings));
      return $view;
    } else {
      return $buildings;
    }
    
  }
  
  public function mill($toJson = true){
    
    $request = $this->getRequest();
    $params = $request->getAllParams();
    
    if ( !isset( $params['title'] ) ){
      $params['title'] = "Mill";
    }
    
    $mill_dao = new \app\model\Buildings\MillDAO();
    $mill = new \app\model\Buildings\Mill();
    $this->prepareRequest($mill);
    $buildings = $mill_dao->selectBuilding($params);
    
    if ($toJson){
      $view = new \app\view\View();
      $view->setData(json_encode($buildings));
      return $view;
    } else {
      return $buildings;
    }
    
  }
  
  public function sawmill($toJson = true){
    
    $request = $this->getRequest();
    $params = $request->getAllParams();
    
    if ( !isset( $params['title'] ) ){
      $params['title'] = "Sawmill";
    }
    
    $sawmill_dao = new \app\model\Buildings\SawmillDAO();
    $sawmill = new \app\model\Buildings\Sawmill();
    $this->prepareRequest($sawmill);
    $buildings = $sawmill_dao->selectBuilding($params);
    
    if ($toJson){
      $view = new \app\view\View();
      $view->setData(json_encode($buildings));
      return $view;
    } else {
      return $buildings;
    }
    
  }
  
  public function stonemason($toJson = true){
    
    $request = $this->getRequest();
    $params = $request->getAllParams();
    
    if ( !isset( $params['title'] ) ){
      $params['title'] = "Stonemason";
    }
    
    $stonemason_dao = new \app\model\Buildings\StonemasonDAO();
    $stonemason = new \app\model\Buildings\Stonemason();
    $this->prepareRequest($stonemason);
    $buildings = $stonemason_dao->selectBuilding($params);
    
    if ($toJson){
      $view = new \app\view\View();
      $view->setData(json_encode($buildings));
      return $view;
    } else {
      return $buildings;
    }
    
  }
  
  public function werehouse($toJson = true){
    
    $request = $this->getRequest();
    $params = $request->getAllParams();
    
    if ( !isset( $params['title'] ) ){
      $params['title'] = "Werehouse";
    }
    
    $werehouse_dao = new \app\model\Buildings\WarehouseDAO();
    $werehouse = new \app\model\Buildings\Warehouse();
    $this->prepareRequest($werehouse);
    $buildings = $werehouse_dao->selectBuilding($params);
    
    if ($toJson){
      $view = new \app\view\View();
      $view->setData(json_encode($buildings));
      return $view;
    } else {
      return $buildings;
    }
    
  }

  public function hideout($toJson = true){
    
    $request = $this->getRequest();
    $params = $request->getAllParams();
    
    if ( !isset( $params['title'] ) ){
      $params['title'] = "Hideout";
    }
    
    $hideout_dao = new \app\model\Buildings\HideoutDAO();
    $hideout = new \app\model\Buildings\Hideout();
    $this->prepareRequest($hideout);
    $buildings = $hideout_dao->selectBuilding($params);
    
    if ($toJson){
      $view = new \app\view\View();
      $view->setData(json_encode($buildings));
      return $view;
    } else {
      return $buildings;
    }
    
  }
  
}
