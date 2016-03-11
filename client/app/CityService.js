app.factory('City', ['$resource', function($resource){

  return $resource( site_url + "/city.find", {}, {
    create: {method: 'POST', url: site_url + "/city.create", cache: false, isArray: false},
    get : { method: 'GET', url: site_url + "/gamecore.city/:verb", cache: false, isArray: false }
  });

}]);

app.factory('cityBuildings', ['$resource', function($resource){

  return $resource( site_url + "/gamecore.cityBuildings:id", {}, {
    get : { method: 'GET', cache: false, isArray: false },
    registerBuilding : { method: 'POST', url: site_url + "/gamecore.registerBuilding", cache: false, isArray: false },
    updateBuilding : { method: 'POST', url: site_url + "/gamecore.registerBuilding", cache: false, isArray: false },
  });

}]);

app.factory('Buildings', ['$resource', function($resource){

  return $resource( site_url + "/gamecore.buildings", {}, {
    get : { method: 'GET', cache: false, isArray: false }
  });

}]);
