// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract Identity { 
    // variables  de estado
    uint public idNumber;
    bool public isWorking;
    string public name;
    address public wallet;

    constructor(uint _idNumber, bool _isWorking , string memory _name) {
        idNumber = _idNumber;
        isWorking = _isWorking;
        name = _name;
        wallet = msg.sender; // variables globales
    }
}