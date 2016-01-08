<?php

namespace app\model\Buildings;

/**
 * Produce wood
 *
 * @author thiago
 */
class Woodcutter extends \app\model\Buildings\Producing {

  public function getResource() {
    return "wood";
  }

}
