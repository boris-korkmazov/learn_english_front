'use strict'

@app.service 'userService', ['$http','endPoint', ($http, endPoint)->
  @all = ->
    $http.get("#{endPoint}/users.json").then (resp)->
      resp.data
  return

  @find = (userId)->
    users = @all
    ###
      add later lodash
    ###
  return
]
