<?php

namespace app\model\Buildings;

/**
 * Description of Silo
 *
 * @author thiago
 */
class Warehouse extends \app\model\Buildings\Building {

  private $capacity;
  
  public function getCapacity(){
    return $this->capacity;
  }
  
  public function getCurrentCost() {
    return $this->current_cost;
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

  public function getNextLevelCost() {
    return $this->nextLevelCost;
  }

  public function getTitle() {
    return $this->title;
  }

}
