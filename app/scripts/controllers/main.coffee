'use strict'
@app.controller 'MainCtrl', ['$location', '$scope', 'AuthService', '$route', ($location, $scope, AuthService) ->

  $scope.current_user = AuthService.getCurrentUser()


  $scope.sendMessage = (message={text:'', class:'success'})->
    $("#message").stop(true, true).show()

    clearTimeout $scope.timeout

    $scope.message = message

    $scope.timeout = setTimeout ->
      $('#message').hide 2000

      $scope.message.text = ''

    , 4000

  $scope.sendMessage {text:'Добро пожаловать', class:'success'}

  $scope.isLoggedIn = ->
    return true if $scope.current_user
    return false

  $scope.logout = ->
    AuthService.logout()
    $scope.current_user = null
    $location.url '/login'

]
