app.controller('loginCtrl', ['$scope', '$location', '$parse', 'Login',
  function($scope, $location, $parse, Login){
    
    var player = { 
      id : null,
      nickname : null,
      email : null,
      password : null,
      confirm_password : null,
      register : false
    };
    
    $scope.player = player;

    $scope.submit = function(){
      
      var player = $scope.player;

      if (player.register && (player.confirm_password !== player.password) ){
        return false;
      }

      
      Login.login({}, $scope.player, function(response){
        
        if ( (response.logged !== undefined) && (response.logged === true) ){
          $location.path("/panel");
        } else {

          if (response.errors != undefined){
            
            var errors = response.errors;

            for (var field in errors){
              
              var message = errors[field];
              $parse('errors.' + field).assign($scope, message);

            }
          }
          
          if (response.error !== undefined){
            $scope.error = response.error;
          }else {
            $scope.error = "Please verify the fields";  
          }
          
        }
        
      });
      
     
     
     
    };
    
  }]);