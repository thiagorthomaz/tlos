<?php

namespace app\model\Buildings;

/**
 * Description of Producing
 *
 * @author thiago
 */
abstract class Producing extends Building {

  protected $income;
  
  public function getTable() {
    return "Tab_producing";
  }
  /**
   * Caculated time to next income
   * @param integer $level
   */
  public function calculateIncome(){
    
    $level = $this->getLevel();
    
    if (!is_numeric($level)){
      "Numeric expected";
      exit;
    }

  }
  
  /**
   * Kind of product will be produced
   */
  abstract public function getResource();
  
  /**
   * Calculate bonus of how much will be produced according with structures around
   */
  public function calculateIncomeBonus(){
    
  }

  /**
  * Payment will be received by hour
  */
  public function getIncome() {
    return $this->income;
  }
  
  public function setIncome($income) {
    $this->income = $income;
  }

  public function getDescription($field) {
    
  }

  public function getFieldsDescriptor() {
    
  }

  
  
}
