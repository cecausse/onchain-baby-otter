<template>
  <div class="register">
    <div class="otterOwner">
      <span>
        Official register of
        <br />baby otter owners
        <br />
      </span>
      <ul class="listOwner">
        <li v-for="item in this.listRegistrationOwners" :key="item">
          {{ item }}
        </li>
      </ul>
    </div>
    ID#
    <input
      class="idOtter"
      type="number"
      min="1"
      max="1024"
      v-model="otterNumber"
    />
    <button
      v-if="$store.state.registrationState == 0"
      @click="register"
      class="bn3637 bn37 fix-width align-self-center"
    >
      Register
    </button>
    <span
      v-else-if="$store.state.registrationState == 1"
      class="fix-width align-self-center"
    >
      <svg
        height="6"
        width="30"
        xmlns="http://www.w3.org/2000/svg"
        viewBox="0 -0.5 5 1"
        shape-rendering="crispEdges"
      >
        <path stroke="#000100">
          <animate
            attributeType="XML"
            attributeName="d"
            dur="2s"
            repeatCount="indefinite"
            values="M0 0h1;M0 0h1 M2 0h1; M0 0h1 M2 0h1M4 0h1;0 0h1 M2 0h1"
          />
        </path>
      </svg>
    </span>
    <span
      v-else-if="$store.state.registrationState == 2"
      class="fix-width align-self-center"
      >Done!</span
    >
    <span
      v-else-if="$store.state.registrationState == 3"
      class="fix-width align-self-center"
      >Error!</span
    >
  </div>
</template>

<script>
import OnChainBabyOtter from "@/lib/OnChainBabyOtter";
import { mapGetters } from "vuex";

export default {
  data() {
    return {
      items: [{ message: "Bar" }],
      otterNumber: 0,
    };
  },
  name: "RegisterOfOtter",
  computed: {
    ...mapGetters(["listRegistrationOwners"]),
  },
  methods: {
    hideRegister() {
      this.$emit("closePanel");
    },
    async register() {
      try {
        await OnChainBabyOtter.registerOfBabyOtterOwners(this.otterNumber);
      } catch (error) {
        console.log("[Exception]", error);
      }
    },
  },
};
</script>

<style lang="scss">
.register {
  width: 50vh;
}
.otterOwner {
  position: relative;
  height: 60vh;
  padding-top: 20px;
}

input[type="number"],
input[type="number"]:focus {
  border: none;
  outline-width: 4;
  margin-right: 15px;
}

@media screen and (max-width: 760px) {
  .listOwner {
    list-style-type: none;
    margin: 0;
    padding-top: 20px;
    padding-left: 0;
    height: 70%;
    font-size: 8px;
  }
}

@media screen and (min-width: 760px) {
  .listOwner {
    list-style-type: none;
    margin: 0;
    padding-top: 20px;
    padding-left: 0;
    height: 70%;
    font-size: 12px;
  }
}
</style>
