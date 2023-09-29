<template>
  <div id="app">
    <router-view />
    <notifications
      group="foo"
      classes="my-notification"
      position="top center"
    />
  </div>
</template>

<script>
export default {
  name: "app",

  data() {
    return {};
  },
};
</script>

<style lang="scss">
@font-face {
  font-family: "Retro";
  src: url("./assets/fonts/Retro Gaming.ttf") format("truetype");
}

@font-face {
  font-family: "04B_30__";
  src: url("./assets/fonts/04B_30__.TTF") format("truetype");
}

@font-face {
  font-family: "Pixeled";
  src: url("./assets/fonts/Pixeled.ttf") format("truetype");
}

@font-face {
  font-family: "dogica";
  src: url("./assets/fonts/dogicabold.ttf") format("truetype");
}

/* Chrome, Safari, Edge, Opera */
input::-webkit-outer-spin-button,
input::-webkit-inner-spin-button {
  -webkit-appearance: none;
  margin: 0;
}

/* Firefox */
input[type="number"] {
  -moz-appearance: textfield;
}

#app {
  font-family: "dogica", sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  font-size: 0.95em;
  text-align: center;
  color: rgb(0, 0, 0);
  background-color: white;
}

section {
  width: 100%;
  height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  text-align: center;
}

@media screen and (max-width: 760px) {
  .bn3637 {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    padding: 0.3rem 1rem;
    font-weight: 700;
    font-size: 10px;
    text-align: center;
    text-decoration: none;
    color: #fff;
    backface-visibility: hidden;
    border: 0.3rem solid transparent;
    margin-top: 10px;
    border-radius: 0.5rem;
  }

  .bn37 {
    border-color: transparent;
    background-color: #fff;
    color: #000;
    transition: transform 0.2s cubic-bezier(0.235, 0, 0.05, 0.95);
  }

  .bn37:hover {
    transform: perspective(1px) scale3d(1.044, 1.044, 1) translateZ(0) !important;
  }
}

@media screen and (min-width: 760px) {
  .bn3637 {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    padding: 0.7rem 2rem;
    font-weight: 700;
    font-size: 12px;
    text-align: center;
    text-decoration: none;
    color: #fff;
    backface-visibility: hidden;
    border: 0.3rem solid transparent;
    border-radius: 0.5rem;
  }

  .bn37 {
    border-color: transparent;
    background-color: #fff;
    color: #000;
    transition: transform 0.2s cubic-bezier(0.235, 0, 0.05, 0.95);
  }

  .bn37:hover {
    transform: perspective(1px) scale3d(1.044, 1.044, 1) translateZ(0) !important;
  }
}
</style>
