var app = angular.module('app',[
  'ngRoute',
  'ngResource',
  'ngCookies',
  'ui.bootstrap'
]);


var site_url = "http://localhost/tlos/";

app.config(['$routeProvider', '$locationProvider',
function($routeProvider, $locationProvider){
  $routeProvider.
    when('/',{
      templateUrl : 'partials/login.html',
      controller: 'loginCtrl'
    }).when('/panel',{
      templateUrl : 'partials/panel.html',
      controller: 'panelCtrl'
    });

    $locationProvider.html5Mode(false).hashPrefix('!');

}]);
