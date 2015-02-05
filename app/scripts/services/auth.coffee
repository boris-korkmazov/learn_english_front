'use strict'

@app.service 'AuthService', ['$http', '$cookieStore',($http, $cookieStore)->
  @current_user = $cookieStore.get("current_user")
  @logout = ->
    $cookieStore.put "current_user", null
    @current_user = null


  @getCurrentUser = ->
    @current_user

  @login = (user)->
    $cookieStore.put "current_user", user
    @current_user = user

  return

]
