'use strict'
@app.controller 'HomeCtrl', ['AuthService', '$scope', '$location', (AuthService, $scope, $location)->
  if not $scope.current_user
    $location.url '/login'
]
