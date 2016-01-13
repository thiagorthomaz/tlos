app.factory('Login', ['$resource', function($resource){

  return $resource( site_url + "/player.login", {}, {
    login: {method: 'POST', cache: false, isArray: false}
  });

}]);