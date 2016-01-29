app.controller('playCtrl', ['$scope', '$routeParams', 'City', 'Buildings',
  function($scope, $routeParams, City, Buildings){
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

      $scope.buildings = buildings;

      
    });

  }]);