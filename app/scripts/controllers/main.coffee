'use strict'
@app.controller 'MainCtrl', ['$location', '$scope', 'AuthService', '$route', ($location, $scope, AuthService) ->
  $scope.current_user = AuthService.getCurrentUser()
  $scope.isLoggedIn = ->
    return true if $scope.current_user
    return false

  $scope.logout = ->
    AuthService.logout()
    $scope.current_user = null
    $location.url '/login'

]
