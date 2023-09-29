import Web3 from "web3";
import store from "../store/index";

import compiledOnChainBabyOtter from "../contract/OnChainBabyOtter.json";
import OnChainBabyOtter from "./OnChainBabyOtter";

const contractAbi = { OnChainBabyOtter: compiledOnChainBabyOtter.abi };
const networks = { OnChainBabyOtter: compiledOnChainBabyOtter.networks };

let web3;
let contract;
let contractAddress;

const init = async () => {
  let web3Provider;
  // Modern dapp browser
  if (window.ethereum) {
    web3Provider = window.ethereum;
  } else if (window.web3) {
    web3Provider = window.web3.currentProvider;
  } else {
    if (
      /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(
        navigator.userAgent
      )
    ) {
      window.open(
        "https://metamask.app.link/dapp/onchainbabyotter.prof-otterlove.com/"
      );
    }
    web3Provider = new Web3.providers.HttpProvider("http://localhost:7545");
  }
  web3 = new Web3(web3Provider);

  window.ethereum.on("chainChanged", (chainId) => {
    store.dispatch("network", chainId);
    OnChainBabyOtter.init();
  });

  window.ethereum.on("accountsChanged", (account) => {
    console.log("accountChanged");
    store.dispatch("currentAccount", account[0]);
    OnChainBabyOtter.init();
  });
  initContract();
};

const initContract = async () => {
  const networkId = await getNetworkId();
  contractAddress = {
    OnChainBabyOtter: networks.OnChainBabyOtter[networkId || 5777].address,
  };
  contract = {
    OnChainBabyOtter: new web3.eth.Contract(
      contractAbi.OnChainBabyOtter,
      contractAddress.OnChainBabyOtter
    ),
  };
  OnChainBabyOtter.init();
  store.dispatch("network", await getNetworkId());
};

const requestAccount = async () => {
  try {
    // Account exposed
    await getCurrentProvider().request({ method: "eth_requestAccounts" });
    getAccounts(function (result) {
      store.dispatch("currentAccount", result[0]);
    });
  } catch (error) {
    console.error("User denied account access, please refresh to connect");
  }
};

const getCurrentProvider = () => {
  return web3 ? web3.currentProvider : null;
};

const getContractAddress = () => {
  return contractAddress;
};
const getContract = () => {
  return contract;
};

const getNetworkId = async () => {
  return await web3.eth.net.getId();
};

const getAccounts = (callback) => {
  web3.eth.getAccounts((error, result) => {
    if (error) {
      console.log(error);
    } else {
      callback(result);
    }
  });
};

const fromUnitToWei = (_valueToConvert, _unit) => {
  return web3.utils.toWei(_valueToConvert, _unit);
};

const fromWeiToUnit = (_valueToConvert, _unit) => {
  return web3.utils.fromWei(_valueToConvert, _unit);
};

const switchToEthereum = async () => {
  await window.ethereum.request({
    method: "wallet_switchEthereumChain",
    params: [{ chainId: "0x1" }], // chainId must be in hexadecimal numbers
  });
};

export default {
  init,
  requestAccount,
  getCurrentProvider,
  getContractAddress,
  getContract,
  fromUnitToWei,
  fromWeiToUnit,
  getAccounts,
  switchToEthereum,
};
