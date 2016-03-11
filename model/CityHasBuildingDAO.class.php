<?php

/**
 * Description of CityHasBuildingDAO
 *
 * @author thiago
 */
class CityHasBuildingDAO extends \app\model\DAO {
  public function getModel() {
    return new \app\model\CityHasBuilding();
  }

  public function getTable() {
    return "Tab_city_Tab_building";
  }

}
