app.factory('Login', ['$resource', function($resource){

  return $resource( site_url + "/player.login", {}, {
    login: {method: 'POST', cache: false, isArray: false}
  });

}]);

app.factory('Player', ['$resource', function($resource){

  return $resource( site_url + "/player.createWorld", {}, {
    createWorld: {method: 'POST', url: site_url + "/player.createWorld", cache: false, isArray: false}
  });

}]);