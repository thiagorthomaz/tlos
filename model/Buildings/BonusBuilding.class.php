<?php

namespace app\model\Buildings;

/**
 * Description of BonusBuilding
 *
 * @author thiago
 */
abstract class BonusBuilding extends Building {
  
  /**
   * Percentage of bonus to the compatible building
   */
  private $efficiency;
  
  /**
   * Percentage of bonus to the Werehouse
   */
  private $storage;
  
  abstract public function getCompatibleBuilding();
  

  
  function getEfficiency() {
    return $this->efficiency;
  }

  function getStorage() {
    return $this->storage;
  }

  function setEfficiency($efficiency) {
    $this->efficiency = $efficiency;
  }

  function setStorage($storage) {
    $this->storage = $storage;
  }

    
  public function getDescription($field) {
    
  }

  public function getFieldsDescriptor() {
   
    $d = new \stphp\FieldsDescriptor();
    $d->setOnlyKey(true);
    $d->setField_name("level");
    $d->setType("\app\model\Buildings\Building");
    $d->setRelationship(\stphp\FieldsDescriptor::oneToMany);
    
    $list = array();
    $list[] = $d;
    return $list;
    
  }
  
}
