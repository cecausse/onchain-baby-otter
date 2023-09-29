import * as types from './mutation-types'

export const mutations = {
  //General
  [types.SET_PROVIDER](state, provider) {
    state.provider = provider
    state.providerType = state.provider.isMetaMask ? 'metamask' : 'http'
  },
  [types.SET_CONTRACT_ADDRESS](state, contractAddress) {
    state.contractAddress = contractAddress
  },
  [types.ADD_NEW_EVENT](state, eventData) {
    state.newEvents.slice(Math.max(state.newEvents.length - 9, 1))
    state.newEvents.push(eventData)
  },
  [types.CURRENT_ACCOUNT](state, account) {
    state.currentAccount = account
  },
  [types.NETWORK](state, network) {
    state.network = network
  },
  //Otter
  [types.ADOPTION_STATE](state, adoptionState) {
    state.adoptionState = adoptionState
  },

  [types.REGISTRATION_STATE](state, registrationState) {
    state.registrationState = registrationState
  },
  [types.COUNT_ADOPTION](state, countAdoption) {
    state.countAdoption = countAdoption
  },
  [types.LIST_REGISTRATION_OWNERS](state, listRegistrationOwners) {
    state.listRegistrationOwners = listRegistrationOwners
  },
  [types.ALREADY_ADOPT](state, alreadyAdopt) {
    state.alreadyAdopt = alreadyAdopt
  },
  [types.BABYOTTER_LOOKING](state, babyOtterLooking) {
    state.babyOtterLooking = babyOtterLooking
  },
  [types.BOOK](state, book) {
    state.book = book
  },
}
