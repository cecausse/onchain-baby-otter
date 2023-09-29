import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import { BootstrapVue, IconsPlugin } from 'bootstrap-vue'
import VueScrollReveal from 'vue-scroll-reveal';
import Notifications from 'vue-notification'

// Import Bootstrap an BootstrapVue CSS files (order is important)
import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue/dist/bootstrap-vue.css'

import './theme/app.scss'



Vue.config.productionTip = false
// Make BootstrapVue available throughout your project
Vue.use(BootstrapVue)
// Optionally install the BootstrapVue icon components plugin
Vue.use(IconsPlugin)
// OR specifying custom default options for all uses of the directive
Vue.use(Notifications)
Vue.use(VueScrollReveal, {
  class: 'v-scroll-reveal', // A CSS class applied to elements with the v-scroll-reveal directive; useful for animation overrides.
  duration: 1300,
  scale: 1,
  distance: '20px'
});

Vue.prototype.$title = "OnChain Baby Otter"
new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
