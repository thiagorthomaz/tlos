<?php

namespace app\model\Buildings;

/**
 * Description of HideoutDAO
 *
 * @author thiago
 */
class HideoutDAO extends \app\model\Buildings\StorageBuildingDAO {
  public function getModel() {
    return new \app\model\Buildings\Hideout();
  }

}
