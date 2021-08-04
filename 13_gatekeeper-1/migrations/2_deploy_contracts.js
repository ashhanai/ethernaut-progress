const Entrant = artifacts.require("Entrant");

module.exports = function (deployer) {
  deployer.deploy(Entrant);
};
