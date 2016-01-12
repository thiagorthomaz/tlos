<?php

namespace app\model\Buildings;

/**
 * Description of FarmDAO
 *
 * @author thiago
 */
class FarmDAO extends \app\model\Buildings\BuildingDAO {

  public function getModel() {
    return new \app\model\Buildings\Farm();
  }

}
