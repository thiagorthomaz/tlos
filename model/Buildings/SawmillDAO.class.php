<?php

namespace app\model\Buildings;

/**
 * Description of SawmillDAO
 *
 * @author thiago
 */
class SawmillDAO extends \app\model\Buildings\BonusBuildingDAO {
  public function getModel() {
   return new \app\model\Buildings\Sawmill(); 
  }

}
