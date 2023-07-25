// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract Asset {
    string name = "coin";

    function getName() public view returns(string memory) {
        return name;
    }
}