app.controller('panelCtrl', ['$scope', '$location','Panel',
  function($scope, $location, Panel){
    
    Panel.get(function(response){
      $scope.player = response.player;
      $scope.worlds = response.worlds;
    });
    
  }]);