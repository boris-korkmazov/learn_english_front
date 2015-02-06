'use strict'

###*
 # @ngdoc overview
 # @name learnEnglishFrontApp
 # @description
 # # learnEnglishFrontApp
 #
 # Main module of the application.
###
@app = angular
  .module('learnEnglishFrontApp', [
    'ngAnimate',
    'ngCookies',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch',
    'underscore'
  ])
  .config ($routeProvider) ->
    $routeProvider
      .when '/login',
        templateUrl: 'views/login.html'
        controller: 'LoginCtrl'
      .when '/',
        templateUrl: 'views/home.html'
        controller: 'HomeCtrl'
      .otherwise
        redirectTo: '/'

  .constant 'endPoint', 'http://localhost:1234/'


