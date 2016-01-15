<?php

namespace app\model;

/**
 * Description of CityInstance
 *
 * @author thiago
 */
class CityInstance implements \stphp\Database\iDataModel {
  
  private $id;
  private $id_city;
  private $amout_wood;
  private $amout_stone;
  private $amout_iron;
  
  function getId() {
    return $this->id;
  }

  function getId_city() {
    return $this->id_city;
  }

  function getAmout_wood() {
    return $this->amout_wood;
  }

  function getAmout_stone() {
    return $this->amout_stone;
  }

  function getAmout_iron() {
    return $this->amout_iron;
  }

  function setId($id) {
    $this->id = $id;
  }

  function setId_city($id_city) {
    $this->id_city = $id_city;
  }

  function setAmout_wood($amout_wood) {
    $this->amout_wood = $amout_wood;
  }

  function setAmout_stone($amout_stone) {
    $this->amout_stone = $amout_stone;
  }

  function setAmout_iron($amout_iron) {
    $this->amout_iron = $amout_iron;
  }

  public function getDescription($field) {
    
  }

  public function getFieldsDescriptor() {
    
  }

}
