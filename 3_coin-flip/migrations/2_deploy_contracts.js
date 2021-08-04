const CoinFlip = artifacts.require("CoinFlip");
const CoinFlipResolver = artifacts.require("CoinFlipResolver")

module.exports = function (deployer) {
    // deployer.deploy(CoinFlip).then(function() {
    //     return deployer.deploy(CoinFlipResolver, CoinFlip.address);
    // });

    deployer.deploy(CoinFlipResolver, "0xc6aDeFd567127A17247bAEFDE0c9Ab40b84b564C"); // Ethernaut 3. level CoinFlip Rinkeby address
};