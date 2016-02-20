app.controller('playCtrl', ['$scope', '$rootScope', '$routeParams', 'City', 'Buildings', 'cityBuildings',
  function($scope, $rootScope, $routeParams, City, Buildings, cityBuildings){

    var id = $routeParams.id;
    
    var selected_build = null;
    
    City.get({'id_city' : id}, function(result){
      if (result.city !== undefined ){
        var city = result.city;
      }else {
        var city = {city_name : 'Unnamed', total_points : 0};
      }
      
      $scope.city = city;
      
    });
    

    Buildings.get(function(results){
      var buildings = results.buildings;
      //$scope.buildings = buildings;
      $rootScope.$broadcast('buildings', buildings);
    });
    
    cityBuildings.get({'id_city' : id}, function(results){
      var city_buildings = results.city_buildings;
      $rootScope.$broadcast('city_buildings', city_buildings);
    });

  }]);