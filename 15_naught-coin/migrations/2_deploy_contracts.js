const NaughtCoin = artifacts.require("NaughtCoin");
const TimeTravel = artifacts.require("TimeTravel");

module.exports = function (deployer, network) {
  if (network == "rinkeby") {
    deployer.deploy(TimeTravel, "0x61027AABB4a31E6761e4578bBa8FeB01E1F2c2e7");
  } else {
    deployer.deploy(NaughtCoin, "0x6d3Ee86eb0eF223BE187CB797105007ccF0c79bE").then(function() {
      return deployer.deploy(TimeTravel, NaughtCoin.address);
    });
  }
};
