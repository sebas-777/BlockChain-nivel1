// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Food {
    
    //Estructura de datos

    struct dinnerPlate{
        string name;
        string ingredients;
    } 

    //Menu del dia
    dinnerPlate [] public menu;

    //Creacion de un menu menu 
    function newMenu(string memory _name,string memory _ingredients) internal {
        menu.push(dinnerPlate(_name,_ingredients));
    } 

} 
contract Hamburger is Food { 

    address public owner;

    constructor() {
        owner = msg.sender;
    }

    //Cocinar una hamburgesa desde el Smart Contract principal 
    function doHamburger(string memory _ingredients,uint _units) external  {
        require(_units <= 5,"Ups, no puedes pedir tantas hamburguesas");
        newMenu("Hamburguer", _ingredients);
    }
    
    modifier onlyOwner(){
        require(owner == msg.sender,"no tienes permi9sos para ejecutar esta funcion");
        _;
    } 

    function hashPrivateNumber(uint _number) public view onlyOwner returns (bytes32) {
         return keccak256(abi.encodePacked(_number));
    }
}
