angular.module('ling', [
  'ui.router'
  'ui.bootstrap'
  'restangular'
  'Devise'
])

.config( (RestangularProvider) ->
  RestangularProvider.setBaseUrl('/api')
  RestangularProvider.setRequestSuffix('.json')
)

.run( ($rootScope) ->
  $rootScope.user =
    email: ''
    password: ''
)

.controller 'LingController', ($scope, $state, Auth) ->

  $scope.login = (user) ->
    Auth.login(user).then(
      (newUser) ->
        $state.go 'about'
    )

  $scope.logout = ->
    Auth.logout().then(
      (oldUser) ->
        $scope.user.email = ''
        $scope.user.password = ''
        $state.go 'login'
    )

  $scope.$on 'devise:unauthorized', (event, xhr, deferred) ->
    $state.go 'login'
