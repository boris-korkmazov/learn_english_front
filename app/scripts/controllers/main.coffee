'use strict'

###*
 # @ngdoc function
 # @name learnEnglishFrontApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the learnEnglishFrontApp
###
angular.module('learnEnglishFrontApp')
  .controller 'MainCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
