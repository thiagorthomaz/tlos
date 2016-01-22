var app = angular.module('app',[
  'ngRoute',
  'ngResource',
  'ngCookies',
  'ui.bootstrap'
]);


var site_url = "http://localhost/tlos/";

app.config(['$routeProvider', '$locationProvider', '$httpProvider',
function($routeProvider, $locationProvider, $httpProvider){
  $routeProvider.
    when('/',{
      templateUrl : 'partials/login.html',
      controller: 'loginCtrl'
    }).when('/panel',{
      templateUrl : 'partials/panel.html',
      controller: 'panelCtrl'
    }).when('/play/:id',{
      templateUrl : 'partials/play.html',
      controller : 'playCtrl'
    });

    $locationProvider.html5Mode(false).hashPrefix('!');
    $httpProvider.interceptors.push('httpRequestInterceptor');

}]);


app.factory('httpRequestInterceptor', function () {
  return {
    request: function (config) {

      config.headers['Authorization'] = 'Basic d2VudHdvcnRobWFuOkNoYW5nZV9tZQ==';
      config.headers['Accept'] = 'application/json;odata=verbose';

      return config;
    }
  };
});


