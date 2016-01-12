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
   * Find way to improve this method and 'sendQuery' method, to avoid the ambiguous sql error
   * The temporary solution is add a 'nick' to the table manually and remove it when will do the bindParam
   * 
   * @param array $params
   * @return string
   */
  protected function where($params){
    $sql = "";
    if (count($params) > 0){
      $sql .= "\nwhere ";
      end($params);
      $last_column = key($params);
      reset($params);
      
      foreach ($params as $column => $value) {
        $sql .= $column . " = :" . str_replace("t1.", "", $column); //Fix to ambiguous error.
        if ($column !== $last_column){
          $sql .= " and ";
        }
      }
    }
    
    return $sql;
    
  }
  
  /**
   * Find way to improve this method and 'where' method, to avoid the ambiguous sql error
   * The temporary solution is add a 'nick' to the table manually and remove it when will do the bindParam
   * 
   * @param string $query
   * @param array $params
   * @return type
   */
  public function sendQuery($query, $params) {

    $conn = $this->getConnection();
    $prepared = $conn->prepare($query);
    
    $exec_params = array();
    foreach ($params as $column => $value){
      $exec_params[":" . str_replace("t1.", "", $column)] = $value; // Remove the 'nick' table.
    }

    $prepared->execute($exec_params);
    $prepared->setFetchMode(\PDO::FETCH_ASSOC);
    
    $result_list = array();
    
    while($result = $prepared->fetch()) {
      $result_list[] = $result;
    }
    
    return $result_list;
  }

  
  public function selectBuilding($params, $limit = 100) {
    
    $params['t1.level'] = $params['level'];
    unset($params['level']);
    
    $sql = "select * from " . $this->getTable() . " t1";
    $sql .= "\njoin " . parent::getTable() . " p1";
    $sql .= "\non p1.level = t1.level";
    $sql .= $this->where($params);
    return $this->sendQuery($sql, $params);
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
