// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.8;

contract Number {
    function getNumber() public returns(int number)  {
        number = 1948;
    } 

    function changeNumber() public returns (int number) {
        number = getNumber()* -1;
    }
}