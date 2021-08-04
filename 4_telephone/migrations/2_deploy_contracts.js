const TelephonePhishing = artifacts.require("TelephonePhishing");

module.exports = function (deployer) {
    deployer.deploy(TelephonePhishing);
};
