const Recoverer = artifacts.require("Recoverer");

module.exports = function (deployer) {
  deployer.deploy(Recoverer);
};
