// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface ISimpleToken {
	function destroy(address payable _to) external;
}

contract Recoverer {

	function recover(address _simpleToken, address payable _to) external {
		ISimpleToken(_simpleToken).destroy(_to);
	}

}
