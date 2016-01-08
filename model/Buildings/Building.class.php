<?php

namespace app\model\Buildings;

/**
 * Description of Buildings
 *
 * @author thiago
 */
abstract class Building implements \stphp\Database\iDataModel{
  
  protected $id;
  protected $title;
  protected $level;
  protected $cost_wood;
  protected $cost_stone;
  protected $cost_iron;
  protected $destruction_cost;
  protected $build_time;
  protected $destruction_time;
  protected $rank_point;
  
  public function __get($name) {
    return $this->$name;
  }
  
  public function __set($name, $value) {
    $this->$name = $value;
  }
  
  public function getCostIron() {
    return $this->cost_iron;
  }

  public function getCostStone() {
    return $this->cost_stone;
  }

  public function getCostWood() {
    return $this->cost_wood;
  }

  public function getDestructionCost() {
    return $this->destruction_cost;
  }

  public function getId() {
    return $this->id;
  }

  public function getLevel() {
    return $this->level;
  }

  public function getTitle() {
    return $this->title;
  }
  
  public function getBuildTime() {
    return $this->build_time;
  }
  
  public function getRankPoint() {
    return $this->rank_point;
  }

  public function setCostIron($cost) {
    $this->cost_iron = $cost;
  }

  public function setCostStone($cost) {
    $this->cost_stone = $cost;
  }

  public function setCostWood($cost) {
    $this->cost_wood = $cost;
  }

  public function setDestructionCost($cost) {
    $this->destruction_cost = $cost;
  }

  public function setId($id) {
    $this->id = $id;
  }

  public function setLevel($level) {
    $this->level = $level;
  }

  public function setTitle($title) {
    $this->title = $title;
  }

  public function setBuildTime($seconds) {
    $this->build_time = $seconds;
  }

  public function setRankPoint($point) {
    $this->rank_point = $point;
  }

  public function getDestructionTime() {
    return $this->destruction_time;
  }

  public function setDestructionTime($seconds) {
    $this->destruction_time = $seconds;
  }
    
}
