import * as types from './mutation-types'

//General
export const provider = ({ commit }, provider) => {
  commit(types.SET_PROVIDER, provider)
}

export const contractAddress = ({ commit }, contractAddress) => {
  commit(types.SET_CONTRACT_ADDRESS, contractAddress)
}

export const addNewEvent = ({ commit }, eventData) => {
  commit(types.ADD_NEW_EVENT, eventData)
}

export const currentAccount = ({ commit }, account) => {
  commit(types.CURRENT_ACCOUNT, account)
}

export const network = ({ commit }, network) => {
  commit(types.NETWORK, network)
}

//Otter

export const adoptionState = ({ commit }, adoptionState) => {
  commit(types.ADOPTION_STATE, adoptionState)
}
export const registrationState = ({ commit }, registrationState) => {
  commit(types.REGISTRATION_STATE, registrationState)
}
export const countAdoption = ({ commit }, countAdoption) => {
  commit(types.COUNT_ADOPTION, countAdoption)
}
export const listRegistrationOwners = ({ commit }, listRegistrationOwners) => {
  commit(types.LIST_REGISTRATION_OWNERS, listRegistrationOwners)
}
export const alreadyAdopt = ({ commit }, alreadyAdopt) => {
  commit(types.ALREADY_ADOPT, alreadyAdopt)
}
export const babyOtterLooking = ({ commit }, babyOtterLooking) => {
  commit(types.BABYOTTER_LOOKING, babyOtterLooking)
}
export const book = ({ commit }, book) => {
  commit(types.BOOK, book)
}

