import Vue from 'vue'
import Vuex from 'vuex'

import {
  mutations
} from './mutations'
import * as actions from './actions'

Vue.use(Vuex)

const state = {
  // General
  providerType: false,
  provider: {},
  contractAddress: null,
  currentAccount: null,
  network: null,
  newEvents: [],
  //Otter
  adoptionState: 0,
  registrationState: 0,
  countAdoption: 0,
  listRegistrationOwners: [],
  alreadyAdopt: [],
  babyOtterLooking: {},
  book: false
}

const getters = {
  // General
  providerType: state => state.providerType,
  provider: state => state.provider,
  contractAddress: state => state.contractAddress,
  currentAccount: state => state.currentAccount,
  network: state => state.network,
  //Otter
  adoptionState: state => state.adoptionState,
  registrationState: state => state.registrationState,
  countAdoption: state => state.countAdoption,
  listRegistrationOwners: state => state.listRegistrationOwners,
  alreadyAdopt: state => state.alreadyAdopt,
  babyOtterLooking: state => state.babyOtterLooking,
  book: state => state.book
}

const store = new Vuex.Store({
  state,
  getters,
  mutations,
  actions
})

export default store
