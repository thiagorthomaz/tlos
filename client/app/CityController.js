app.controller('playCtrl', ['$scope',
  function($scope){
    
    var city = {city_name : 'Unnamed', total_points : 0};
    var city_instance = {amount_wood : 0, amount_stone : 0, amount_iron : 0};
    
    $scope.city = city;
    $scope.city_instance = city_instance;
    
  }]);