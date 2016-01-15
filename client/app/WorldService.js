app.factory('World', ['$resource', function($resource){

  return $resource( site_url + "/world.listAll", {}, {
    create: {method: 'POST', url: site_url + "/world.create", cache: false, isArray: false},
    getAll: {method: 'GET', cache: false, isArray: false}
  });

}]);