// SPDX-License-Identifier: MIT
pragma solidity >=0.7.9 < 0.9.0;

contract ProjectCrowdfunding { 

    // se declarn variables de estado
    string public id;
    string public name;
    string public description;
    address payable public author;
    string public state = 'Opened';
    uint public funds;
    uint public fudraisingGoal;
    
    // constructor 
    constructor(string memory _id,string memory _name, string memory _description ,uint _fudraisingGoal) {
        id = _id;
        name = _name;
        description = _description;
        fudraisingGoal = _fudraisingGoal;
        author = payable(msg.sender);
    }
    

    // funcion asigna valor al proyecto 
    function fundProject() public payable { 
        author.transfer(msg.value);
        funds += msg.value;
    }

    // funcion que cambia el estado del proyecto 
    function changeProjectState(string calldata newState) public  {
        state = newState;
    }
}