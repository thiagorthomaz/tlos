app.controller('panelCtrl', ['$scope', '$location','Panel', 'World', 'Player',
  function($scope, $location, Panel, World, Player){
    
    $scope.new_world_selected = null;

    Panel.get(function(response){
      $scope.player = response.player;
      $scope.worlds = response.worlds;
    });
    
    World.getAll(function(response){
      $scope.avaliable_worlds = response.avaliable_worlds;
    });
    
    $scope.createWorld = function(){
      
      
      var post = {id_world : $scope.new_world_selected };
      
      Player.createWorld(post, function(response){
        
        var result = response.result;
        if (result.created){
          $location.path("/play");
        }

      });
      
    };
    
  }]);