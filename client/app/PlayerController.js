app.controller('loginCtrl', ['$scope', '$location','Login',
  function($scope, $location, Login){
    
    var player = { 
      id : null,
      nickname : null,
      email : null
    };
    
    $scope.player = player;
    
    $scope.submit = function(){

      Login.login({}, $scope.player, function(response){
        
        if ( (response.logged !== undefined) && (response.logged === true) ){
          $location.path("/panel");
        } else {
          alert("Error");
        }
        
      });
      
    };
    
  }]);