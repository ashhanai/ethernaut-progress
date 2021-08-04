const Entrant = artifacts.require("Entrant");

module.exports = function (deployer) {
  deployer.deploy(Entrant, "0x77294448565061a6fab2488651Ab0718B2612345");
};
