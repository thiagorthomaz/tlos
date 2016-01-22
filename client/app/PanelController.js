app.controller('panelCtrl', ['$scope', '$location','Panel', 'World', 'Player', 'City',
  function($scope, $location, Panel, World, Player, City){
    
    $scope.new_world_selected = null;
    $scope.new_city = {city_name : null, id_world : null};
    $scope.error = null;
    
    Panel.get(function(response){
      $scope.player = response.player;
      $scope.worlds = response.worlds;
      $scope.citys = response.citys;
      $scope.citys_selected = [];
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
          $location.path("/play/" + response.city_id);
          $('#select_city').modal('hide');
        }

      });

    };

    $scope.createWorld = function(){

      var world_post = {id_world : $scope.new_world_selected };

      Player.createWorld(world_post, function(response){

        var result = response.result;

        if (result.created){
          $scope.worlds = result.worlds;
        }

      });

    };

    $scope.btnSelectCity = function(world_id){

      $scope.new_city.id_world = world_id;

      var city_list = $scope.citys;
      var citys_to_select = new Array();
      
      for (var i in city_list){
        
        if (city_list[i].id_world === world_id){
          citys_to_select.push(city_list[i]);
        }
        
      }

      $scope.citys_selected = citys_to_select;

    }

  }]);