<?php

namespace app\model\Buildings;

/**
 * Description of FoundryDAO
 *
 * @author thiago
 */
class FoundryDAO  extends \app\model\Buildings\BonusBuildingDAO {
  
  
  public function getModel() {
    return new \app\model\Buildings\Foundry();
  }

}
