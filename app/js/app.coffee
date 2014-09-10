angular.module('ling', [
  'ui.router'
])

.controller 'LingController', ($scope) ->
  $scope.testMessage = 'This is the test message'
