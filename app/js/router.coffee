angular.module('ling')
.config ($stateProvider, $urlRouterProvider) ->

  $urlRouterProvider.otherwise "/home"

  $stateProvider

  .state "home",
    url: "/home"
    template: "<p>Home</p>"

  .state "about",
    url: "/about"
    template: "<p>About</p>"
