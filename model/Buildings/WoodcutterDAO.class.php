<?php

namespace app\model\Buildings;

/**
 * Description of WoodcutterDAO
 *
 * @author thiago
 */
class WoodcutterDAO extends \app\model\Buildings\BuildingDAO {
  
  public function getModel() {
    return new \app\model\Buildings\WoodcutterDAO();
  }

}
