'use strict'

@app.directive 'userCreate', ['UserService', (UserService)->

  return {
    restrict: 'E'

    scope:

      userName: '@'

      importWords: '='

      hiddenForm: '@'

    templateUrl: 'views/partials/UserCreate.html'

    link: (scope, element)->

      scope.userName = ''

      scope.hiddenForm = true

      scope.toggleForm = ->
        scope.hiddenForm = ! scope.hiddenForm

      scope.createUser = ->

        if scope.userName is ''

          return scope.$parent.sendMessage({text: 'Укажите имя пользователя', class: 'danger'})


        UserService.create({name: scope.userName}).then (data) ->
          scope.toggleForm()

          scope.userName = ''

          scope.$parent.users.push data

          scope.$parent.sendMessage {text: "Пользователь \'#{scope.userName}\' успешно создан", class: 'success'}

        , (reason)->

            scope.$parent.sendMessage({text: "Невозможно создать нового пользователя: #{reason}", class: 'danger'})

  }
]
