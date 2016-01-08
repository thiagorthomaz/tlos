<?php

namespace app\model\Buildings;

/**
 * Produce Iron
 *
 * @author thiago
 */
class IronMine extends \app\model\Buildings\Producing {

  public function getResource() {
    return "iron";
  }



}
