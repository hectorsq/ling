angular.module('ling', [
  'ui.router'
  'ui.bootstrap'
  'restangular'
])

.config( (RestangularProvider) ->
  RestangularProvider.setBaseUrl('/api')
  RestangularProvider.setRequestSuffix('.json')
)

.controller 'LingController', ($scope) ->
