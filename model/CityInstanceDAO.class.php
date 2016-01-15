<?php

namespace app\model;

/**
 * Description of CityInstanceDAO
 *
 * @author thiago
 */
class CityInstanceDAO extends \app\model\DAO {
  
  public function getModel() {
    return new \app\model\CityInstance();
  }

  public function getTable() {
    return "Tab_city_instance";
  }

}
