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

.controller 'LingController', ($scope) ->
