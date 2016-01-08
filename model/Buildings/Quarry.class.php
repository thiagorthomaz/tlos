<?php

namespace app\model\Buildings;

/**
 * Produce Stone
 *
 * @author thiago
 */
class Quarry extends \app\model\Buildings\Producing {
  
  public function getResource() {
    return "stone";
  }

}
