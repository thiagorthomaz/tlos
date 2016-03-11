<?php

namespace app\model;

class CityHasBuilding implements \stphp\Database\iDataModel {
  
  private $id_city;
  private $id_building;
  private $x;
  private $y;
  private $z;

  public function getDescription($field) {
    
  }

  public function getFieldsDescriptor() {
    
  }

  public function getId() {
    $id_city = $this->getId_city();
    $id_building = $this->getId_building();
    return array('id_city' => $id_city, 'id_building' => $id_building);
  }

  public function setId($id) {
    if (isset($id['id_city'])) {
      $this->setId_city($id['id_city']);
    }
    if (isset($id['id_building'])) {
      $this->setId_building($id['id_building']);
    }
  }
  
  function getId_city() {
    return $this->id_city;
  }

  function getId_building() {
    return $this->id_building;
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

  function setId_city($id_city) {
    $this->id_city = $id_city;
  }

  function setId_building($id_building) {
    $this->id_building = $id_building;
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



}