'use strict'

@app.controller 'LoginCtrl',['userService', 'AuthService','$scope', '$location', (userService, AuthService, $scope, $location)->
  userService.all().then (data)->
    $scope.users = data

  $scope.setUser = (user)->
    AuthService.login(user)
    $scope.$parent.current_user = user

  return
]
