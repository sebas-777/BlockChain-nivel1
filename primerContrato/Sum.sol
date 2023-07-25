// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 < 0.9.0;

contract Sum { 
    int number = 100;

    function sum(int a ,int b) public pure returns(int result) {
        result = a + b ;
    }
    
}