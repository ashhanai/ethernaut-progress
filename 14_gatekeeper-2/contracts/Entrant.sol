// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Entrant {

	constructor(address _gatekeeper) {
		bytes8 gateKey = ~bytes8(keccak256(abi.encodePacked(address(this))));

		_gatekeeper.call(abi.encodeWithSignature("enter(bytes8)", gateKey));
	}

}
