'use strict'

@app.service 'UserService', ['$http','endPoint', ($http, endPoint)->
  @all = ->
    $http.get("#{endPoint}users.json").then (resp)->
      resp.data

  @delete = (userId)->
    $http.delete("#{endPoint}users/#{userId}.json").then (resp)->
      resp.data

  @create = (user)->
    $http.post("#{endPoint}/users.json", user).then (resp)->
      resp.data
  @find = (userId)->
    users = @all
    ###
      add later lodash
    ###
  return
]
