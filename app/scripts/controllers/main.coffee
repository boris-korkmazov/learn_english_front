'use strict'
@app.controller 'MainCtrl', ['$location', '$scope', 'AuthService', ($location, $scope, AuthService) ->
  #if ( not @scope.current_user = AuthService.getCurrentUser()) and $location.path() isnt "/login"
   # $location.redirect '/login'
  $scope.isLogined = true
  $scope.logout = ->
    AuthService.logout()
    $scope.isLogined = false

]
