<?php

namespace app\model;
/**
 * Description of CityDAO
 *
 * @author thiago
 */
class CityDAO extends \app\model\DAO {
  
  
  public function getModel() {
    return new \app\model\City();
  }

  public function getTable() {
    return "Tab_city";
  }

}
