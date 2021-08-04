// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import '@openzeppelin/contracts/token/ERC20/IERC20.sol';

contract TimeTravel {

	IERC20 public naughtCoin;

	constructor(address _naughtCoin) {
		naughtCoin = IERC20(_naughtCoin);
	}

	function transferToThis(uint256 _amount) external returns (bool) {
		return naughtCoin.transferFrom(msg.sender, address(this), _amount);
	}

	function withdraw(address _recipient, uint256 _amount) external returns (bool) {
		return naughtCoin.transfer(_recipient, _amount);
	}

}
