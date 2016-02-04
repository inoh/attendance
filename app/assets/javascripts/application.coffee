global.Vue = require 'vue'
global.VueRouter = require 'vue-router'
Vue.use VueRouter
Vue.use require 'vue-validator/dist/vue-validator'
global.moment = require 'moment'
global.$ = global.jQuery = require 'jquery'
global.Pages = {}
Vue.config.debug = false

App = Vue.extend({})
router = new VueRouter(history: true)
$ ->
  map =
    '/works':
      component: Vue.extend(require "./pages/works/index")
  router.map(map)
  router.start(App, '#app-main')
  # new Vue require "./pages/shared/header" if $('#app-header').length > 0
  # new Vue require "./pages/shared/footer" if $('#app-footer').length > 0
