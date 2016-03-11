app.controller('playCtrl', ['$scope', '$rootScope', '$routeParams', 'City', 'Buildings', 'cityBuildings',
  function($scope, $rootScope, $routeParams, City, Buildings, cityBuildings){

    var id_city = $routeParams.id;
    var selected_building = { 
      id : null,
      title : null, 
      build_time :null, 
      destruction_time : null, 
      cost_wood:null, 
      cost_stone:null,
      cost_iron:null, 
      image : null
    };

    $scope.selected_building = selected_building;
    
    $scope.selectOneBuilding = function(building){
      $scope.selected_building = building;
    };
    
    loadCityInfo(City, id_city, $scope);
    loadAllBuildings(Buildings, $rootScope);
    loadCityBuildings(cityBuildings, id_city, $rootScope);

}]);

function loadCityInfo(CityService, id_city, $scope){
  CityService.get({'id_city' : id_city}, function(result){
    if (result.city !== undefined ){
      var city = result.city;
    }else {
      var city = {city_name : 'Unnamed', total_points : 0};
    }
    $scope.city = city;
  });
}

function loadAllBuildings(BuildingsService, $rootScope){
  BuildingsService.get(function(results){
    var buildings = results.buildings;
    $rootScope.$broadcast('buildings_list', buildings);
  });
}

function loadCityBuildings(CityBuildingsService, id_city, $rootScope){
  CityBuildingsService.get({'id_city' : id_city}, function(results){
    var city_buildings = results.city_buildings;
    $rootScope.$broadcast('city_buildings', city_buildings);
  });
}