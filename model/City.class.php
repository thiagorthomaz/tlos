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
  private $id_world;
  private $city_name;
  private $amount_wood;
  private $amount_stone;
  private $amount_iron;
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
  function getId_world() {
    return $this->id_world;
  }

  function getAmount_wood() {
    return $this->amount_wood;
  }

  function getAmount_stone() {
    return $this->amount_stone;
  }

  function getAmount_iron() {
    return $this->amount_iron;
  }

  function setId_world($id_world) {
    $this->id_world = $id_world;
  }

  function setAmount_wood($amount_wood) {
    $this->amount_wood = $amount_wood;
  }

  function setAmount_stone($amount_stone) {
    $this->amount_stone = $amount_stone;
  }

  function setAmount_iron($amount_iron) {
    $this->amount_iron = $amount_iron;
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
