const Attacker = artifacts.require("Attacker");

module.exports = function (deployer) {
  deployer.deploy(Attacker);
};
