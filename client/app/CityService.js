app.factory('City', ['$resource', function($resource){

  return $resource( site_url + "/city.find", {}, {
    create: {method: 'POST', url: site_url + "/city.create", cache: false, isArray: false},
    get : { method: 'GET', url: site_url + "/gamecore.city/:verb", cache: false, isArray: false }
  });

}]);
