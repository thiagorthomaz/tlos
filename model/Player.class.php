<?php

namespace app\model;

/**
 * Description of Tab_player
 *
 * @author thiago
 */
class Player implements \stphp\Database\iDataModel {
  
  private $id;
  private $nickname;
  private $password;
  
  public function getDescription($field) {
    
  }

  public function getFieldsDescriptor() {
    
  }

  public function getId() {
    return $this->id;
  }

  public function setId($id) {
    $this->id = $id;
  }
  
  function getNickname() {
    return $this->nickname;
  }

  function getPassword() {
    return $this->password;
  }

  function setNickname($nickname) {
    $this->nickname = $nickname;
  }

  function setPassword($password) {
    $this->password = $password;
  }

  protected function getAttributeList(){
    $rc = new \ReflectionClass(get_class($this));
    $attribute_list = array();

    foreach ($rc->getProperties() as $prop){
      $attribute_list[] = $prop->name;
    }
    
    return $attribute_list;
  }


}
