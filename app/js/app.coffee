angular.module('ling', [
  'ui.router',
  'restangular'
])

.config( (RestangularProvider) ->
  RestangularProvider.setBaseUrl('/api')
  RestangularProvider.setRequestSuffix('.json')
)

.controller 'LingController', ($scope) ->
