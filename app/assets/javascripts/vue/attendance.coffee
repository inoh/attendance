window.Models = {}
window.ViewModels = {}

$ =>
  App = Vue.extend({})
  router = new VueRouter()
  router.map
    '/works':
      component: ViewModels.Works
  router.start App, '#app'
