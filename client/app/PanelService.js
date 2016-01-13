app.factory('Panel', ['$resource', function($resource){

  return $resource( site_url + "/panel.player", {}, {
    login: {method: 'GET', cache: false, isArray: false}
  });

}]);