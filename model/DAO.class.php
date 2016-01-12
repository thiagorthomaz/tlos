<?php

namespace app\model;

/**
 * Description of DAO
 *
 * @author thiago
 */
abstract class DAO extends \stphp\Database\MySQL {

  public function __construct() {

    $pdo_config = new \app\config\PDOConfig();
    $pdo_config->setUser("root");
    $pdo_config->setpassword("");
    
    $this->connect($pdo_config);

  }

  public function modeltoArray(\stphp\Database\iDataModel $data_model) {
    
    $slice = get_class($data_model);
    
    $list = (array)$data_model;
    
    $array = array();
    
    foreach ($list as $attribute => $value){
      
      $sliced = str_replace($slice, "", $attribute);
      $array[trim($sliced)] = $value;

    }

    return $array;
    
  }
  
}
