<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace app\model\Buildings;

/**
 * Description of Tab_storage_buildings
 *
 * @author thiago
 */
class StorageBuilding extends \app\model\Buildings\Building {
  
  protected  $level;
  protected $storage;
  
  function getLevel() {
    return $this->level;
  }

  function getStorage() {
    return $this->storage;
  }

  function setLevel($level) {
    $this->level = $level;
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
