import Vue from 'vue'
import './plugins/vuetify'
import App from './App.vue'
import router from './router'
import store from './store'

Vue.config.productionTip = false

require('@/styles/index.sass')

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
