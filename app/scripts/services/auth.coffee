'use strict'

@app.service 'AuthService', ['$http', '$cookies', ($http, $cookies)->
  alert("Auth")
  @logout = ()->
    alert('LogOut')
    return

  @getCurrentUser = ()->
    null

  return

]
