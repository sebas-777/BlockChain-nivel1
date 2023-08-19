// SPDX-License-Identifier: MIT
pragma solidity^0.8.4;

contract functions {
    
    // Funciones de tipo pure 
    function getName() public pure returns (string memory) {
    return "joan";
    } 

    // Funciones de tipo view 
    uint256 x = 100;
    function getNumber() public view returns(uint256) {
        return x*2;
    }
}