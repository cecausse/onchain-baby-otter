<template>
  <div class="home">
    <Lbo @showRegister="showPanel" />
    <slideout-panel></slideout-panel>
  </div>
</template>

<script>
import Lbo from "../components/LovelyBabyOtter.vue";
import RegisterOfOtter from "../components/RegisterOfOtter.vue";
export default {
  name: "Home",
  data() {
    return {
      countImgLoad: 0,
      isLoading: false,
    };
  },
  components: {
    Lbo
  },
  methods: {
    showPanel() {
      const panelResult = this.$showPanel({
        component: RegisterOfOtter,
        cssClass: "pannelStyle",
      });
      panelResult.promise.then(() => {
        this.$store.dispatch("book", false);
        panelResult.hide();
      });
    },
  },
};
</script>

<style lang="scss">
.pannelStyle {
  background: transparent !important;
  background-image: url("../assets/page.webp") !important;
  background-size: contain !important;
  background-repeat: no-repeat !important;
  margin-top: 15vh;
  height: 70vh !important;
  width: 550px !important;
  margin-left: -15px;

  z-index: 999;
}
</style>
