const Preservation = artifacts.require("Preservation");
const Attacker = artifacts.require("Attacker");
const LibraryContract = artifacts.require("LibraryContract");

module.exports = function (deployer, network) {
  if (network == "rinkeby") {
    deployer.deploy(Attacker);
  } else {
    deployer.deploy(LibraryContract).then(function() {
      return deployer.deploy(Preservation, LibraryContract.address, LibraryContract.address);
    });
    deployer.deploy(Attacker);
  }
};
