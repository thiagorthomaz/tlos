app.controller('panelCtrl', ['$scope', '$location','Panel', 'World', 'Player', 'City',
  function($scope, $location, Panel, World, Player, City){
    
    $scope.new_world_selected = null;
    $scope.new_city = {city_name : null, id_world : null};
    $scope.error = null;
    
    Panel.get(function(response){
      $scope.player = response.player;
      $scope.worlds = response.worlds;
      $scope.citys = response.citys;
    });
    
    World.getAll(function(response){
      $scope.avaliable_worlds = response.avaliable_worlds;
    });
    
    $scope.play = function(id){
      $('#select_city').modal('hide');
      $location.path("/play/" + id);
    }

    $scope.createCity = function(){
      
      var city_post = {city : $scope.new_city };
      
      City.create(city_post, function(response){
        
        if (response.error !== undefined){
          
          $scope.error = response.error;

        }
        
        if (response.success !== undefined){
          $('#select_city').modal('hide');
        }

      });
      
      
    };
    
    $scope.createWorld = function(){

      var world_post = {id_world : $scope.new_world_selected };

      Player.createWorld(world_post, function(response){

        var result = response.result;

        if (result.created){
          //$location.path("/play");
        }

      });
      
    };
    
  }]);