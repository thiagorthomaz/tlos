app.controller('playCtrl', ['$scope', '$routeParams', 'City',
  function($scope, $routeParams, City){
    var id = $routeParams.id;
    
    City.get({'id_city' : id}, function(result){
      if (result.city !== undefined ){
        var city = result.city;
      }else {
        var city = {city_name : 'Unnamed', total_points : 0};
      }
      
      $scope.city = city;
      
    });

  }]);