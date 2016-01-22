<?php


namespace app\model\Buildings;

/**
 * Description of Tab_storage_buildingDAO
 *
 * @author thiago
 */
abstract class StorageBuildingDAO extends \app\model\Buildings\BuildingDAO {
  
  public function getTable() {
    return "Tab_storage_building";
  }
  
  /**
   * 
   * @TODO: Improve this method
   * 
   * @param array $params
   * @param int $limit
   * @return array
   */
  public function selectBuilding($params, $limit = 100) {

    if (isset($params['level'])){
      $params['t1.level'] = $params['level'];
      unset($params['level']);
    }

    $sql = "select * from " . $this->getTable() . " t1";
    $sql .= "\njoin " . parent::getTable() . " p1";
    $sql .= "\non p1.level = t1.level";
    $sql .= $this->where($params);
    $sql = str_replace(":level", ":t1.level", $sql);
    $sql = str_replace(":t1.level", ":t1_level", $sql);
    
    if (isset($params['t1.level'])){
      $params['t1_level'] = $params['t1.level'];
      unset($params['t1.level']);
    }

    $result = $this->sendQuery($sql, $params);

    $rs = $result->getResultSet();
    return $rs;
  }
  
  public function getFieldsDescriptor() {
   
    $d = new \stphp\FieldsDescriptor();
    $d->setOnlyKey(true);
    $d->setField_name("level");
    $d->setType("\app\model\Buildings\Building");
    $d->setRelationship(\stphp\FieldsDescriptor::oneToMany);
    
    $list = array();
    $list[] = $d;
    return $list;
    
  }

}
