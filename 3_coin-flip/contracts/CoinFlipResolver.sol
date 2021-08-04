// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import '@openzeppelin/contracts/utils/math/SafeMath.sol';
import './ICoinFlip.sol';

contract CoinFlipResolver {

	using SafeMath for uint256;
  	uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;
  	ICoinFlip coinFlipContract;

  	constructor(address _coinFlip) {
  		coinFlipContract = ICoinFlip(_coinFlip);
  	}

	function resolveFlip() external returns (bool) {
    	uint256 blockValue = uint256(blockhash(block.number.sub(1)));

    	uint256 coinFlip = blockValue.div(FACTOR);
    	bool side = coinFlip == 1 ? true : false;

    	return coinFlipContract.flip(side);
	}

}
