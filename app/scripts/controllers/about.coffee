'use strict'

###*
 # @ngdoc function
 # @name learnEnglishFrontApp.controller:AboutCtrl
 # @description
 # # AboutCtrl
 # Controller of the learnEnglishFrontApp
###
angular.module('learnEnglishFrontApp')
  .controller 'AboutCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
