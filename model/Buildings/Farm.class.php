<?php

namespace app\model\Buildings;

/**
 * Description of Fam
 *
 * @author thiago
 */
class Farm extends \app\model\Buildings\Producing {
  
  public function getResource() {
    return "grain";
  }

  public function getDescription($field) {
    
  }

  public function getFieldsDescriptor() {
    
  }

}
