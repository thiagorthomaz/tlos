<?php

namespace app\model\Buildings;

/**
 * Description of QuerryDAO
 *
 * @author thiago
 */
class QuarryDAO extends \app\model\Buildings\BuildingDAO {
  
  public function getModel() {
    return new \app\model\Buildings\Quarry();
  }

}
