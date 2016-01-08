<?php

namespace app\model\Buildings;

/**
 * Description of BonusBuilding
 *
 * @author thiago
 */
abstract class BonusBuilding extends Building {
  
  private $bonus = 30;
  
  abstract public function getCompatibleBuilding();
  
  /**
   * Percentage of bonus to the compatible building
   */
  public function getBonus(){
    return $this->bonus;
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
