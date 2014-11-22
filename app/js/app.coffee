angular.module('ling', [
  'ui.router'
  'ui.bootstrap'
  'Devise'
])

.config( (AuthProvider) ->
  AuthProvider.interceptAuth true
)

.run( ($rootScope, Auth) ->
  $rootScope.user =
    email: ''
    password: ''

  $rootScope.menu =
    show: false

  Auth.currentUser().then(
    (user) ->
      $rootScope.menu.show = true
    ,
    (error) ->
      $rootScope.menu.show = false
  )
)

.controller 'LingController', ($scope, $state, Auth) ->

  $scope.login = (user) ->
    Auth.login(user).then(
      (newUser) ->
        $scope.menu.show = true
        $state.go 'about'
    )

  $scope.logout = ->
    Auth.logout().then(
      (oldUser) ->
        $scope.menu.show = false
        $scope.user.email = ''
        $scope.user.password = ''
        $state.go 'login'
    )

  $scope.$on 'devise:unauthorized', (event, xhr, deferred) ->
    $state.go 'login'
