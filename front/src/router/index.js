import Vue from "vue";
import VueRouter from "vue-router";
import Home from "../views/Home.vue";
import VueSlideoutPanel from "vue2-slideout-panel";

Vue.use(VueSlideoutPanel);
Vue.use(VueRouter);

const routes = [
  {
    path: "/",
    name: "Home",
    component: Home,
  },
];

const router = new VueRouter({
  mode: "history",
  base: process.env.BASE_URL,
  routes,
});

router.beforeEach((t, u, next) => {
  window.document.title = "OnChain Baby 💣tter";

  next();
});

export default router;
