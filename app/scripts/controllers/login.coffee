'use strict'

@app.controller 'LoginCtrl',['UserService', 'AuthService','$scope', '$location', '_', (UserService, AuthService, $scope, $location, _ )->
  $scope.users = []
  UserService.all().then (data)->
    $scope.users = data

  $scope.usersEmpty = ->
    ! $scope.users.length

  $scope.setUser = (user)->
    AuthService.login(user)
    $scope.$parent.current_user = user

  $scope.deleteUser = (userId)->
    if confirm "Вы уверены, что хотите удалить пользователя?"
      if $scope.current_user and $scope.current_user.id is userId
        $scope.$parent.current_user = null
        AuthService.logout()
      UserService.delete(userId).then (data)->
        $scope.users = _.reject $scope.users, (user)->
          user.id is userId

        $scope.$parent.sendMessage {text: "Пользователь успешно удален", class: 'success'}

  return
]
