<?php

namespace app\model;

/**
 * Description of World
 *
 * @author thiago
 */
class World  implements \stphp\Database\iDataModel {
  
  private $id;
  private $name;
  
  public function getDescription($field) {
    
  }

  public function getFieldsDescriptor() {
    
  }

  public function getId() {
    return $this->id;
  }

  function getName() {
    return $this->name;
  }

  function setName($name) {
    $this->name = $name;
  }
  
  public function setId($id) {
    $this->id = $id;
  }

}
