<?php

namespace app\model;

/**
 * Description of City
 *
 * @author thiago
 */
class City  implements \stphp\Database\iDataModel {
  
  private $id;
  private $id_player;
  private $city_name;
  private $x;
  private $y;
  private $z;
  
  function getId_player() {
    return $this->id_player;
  }

  function getCity_name() {
    return $this->city_name;
  }

  function getX() {
    return $this->x;
  }

  function getY() {
    return $this->y;
  }

  function getZ() {
    return $this->z;
  }

  function setId_player($id_player) {
    $this->id_player = $id_player;
  }

  function setCity_name($city_name) {
    $this->city_name = $city_name;
  }

  function setX($x) {
    $this->x = $x;
  }

  function setY($y) {
    $this->y = $y;
  }

  function setZ($z) {
    $this->z = $z;
  }

    
  public function getDescription($field) {
    
  }

  public function getFieldsDescriptor() {
    
  }

  public function getId() {
    return $this->id;
  }

  public function setId($id) {
    return $this->id;
  }

}