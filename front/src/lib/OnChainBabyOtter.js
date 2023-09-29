import Web3Helper from "./Web3Helper";
import store from "../store";

const GAS_ADOPT = 160000;

const adoptOtter = () => {
  Web3Helper.getAccounts(function (result) {
    Web3Helper.getContract()
      .OnChainBabyOtter.methods.adoptMyLovelyOtter()
      .send({ from: result[0], gas: GAS_ADOPT })
      .on("transactionHash", () => {
        store.dispatch("adoptionState", 1);
      })
      .then(function () {
        store.dispatch("adoptionState", 2);
        setTimeout(function () {
          getEvents();
        }, 5000);
      })
      .catch(function () {
        store.dispatch("adoptionState", 3);
      });
  });
};

const registerOfBabyOtterOwners = (otterId) => {
  Web3Helper.getAccounts(function (result) {
    Web3Helper.getContract()
      .OnChainBabyOtter.methods.ownerOf(otterId)
      .call()
      .then(function (owner) {
        if (owner == result[0]) {
          Web3Helper.getContract()
            .OnChainBabyOtter.methods.registrationOfBabyOtterOwners(otterId)
            .send({
              from: result[0],
              value: Web3Helper.fromUnitToWei("0.02", "ether"),
            })
            .on("transactionHash", () => {
              store.dispatch("registrationState", 1);
            })
            .then(function () {
              store.dispatch("registrationState", 2);
              getEvents();
            })
            .catch(function () {
              store.dispatch("registrationState", 3);
            });
        } else {
          alert("You're not the parent of the baby otter #" + otterId);
        }
      })
      .catch(function (error) {
        alert("This baby otter doesn't exists");
        console.log(error);
      });
  });
};

const event = () => {
  Web3Helper.getContract().OnChainBabyOtter.events.Transfer(() => {
    getCountAdoption;
  });
};

const getEvents = () => {
  Web3Helper.getContract()
    .OnChainBabyOtter.getPastEvents("allEvents", { fromBlock: 1 })
    .then(function (events) {
      let listRegistrationOwners = [];
      let alreadyAdopt = [];
      let countAdoption = 0;
      let babyOtterLooking = {};
      events.forEach((item) => {
        if (item.event == "Transfer") {
          if (
            item.returnValues.from ==
            "0x0000000000000000000000000000000000000000"
          ) {
            countAdoption++;
            alreadyAdopt.push(item.returnValues.to);
            babyOtterLooking[item.returnValues.to] = item.returnValues.tokenId;
          }
        } else if (item.event == "registerOfBabyOtterOwners") {
          listRegistrationOwners.push(
            item.returnValues._address.slice(0, 15) +
              "..." +
              item.returnValues._address.slice(25)
          );
        }
      });
      store.dispatch("countAdoption", countAdoption);
      store.dispatch("listRegistrationOwners", listRegistrationOwners);
      store.dispatch("alreadyAdopt", alreadyAdopt);
      store.dispatch("babyOtterLooking", babyOtterLooking);
    });
};

const getCountAdoption = () => {
  Web3Helper.getContract()
    .OnChainBabyOtter.getPastEvents("allEvents", { fromBlock: 1 })
    .then(function (events) {
      let countAdoption = 0;
      events.forEach((item) => {
        if (item.event == "Transfer") {
          if (
            item.returnValues.from ==
            "0x0000000000000000000000000000000000000000"
          ) {
            countAdoption++;
          }
        }
      });
      store.dispatch("countAdoption", countAdoption);
    });
};

const init = () => {
  event();
  getEvents();
};

export default {
  adoptOtter,
  init,
  getEvents,
  registerOfBabyOtterOwners,
};
