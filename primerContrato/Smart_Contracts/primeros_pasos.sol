// SPDX-License-Identifier: MIT

//version
pragma solidity ^0.8.4 ;

//Importar un Smart Contract desde Openzeppelin
import "@openzeppelin/contracts@4.9.3/token/ERC721/ERC721.sol";  

//Declaracion del Smart Contract 

abstract contract FirsContract is ERC721 {
    

    //Direccion de la persona que despliega el contrato 

    address public  owner;

    /* Almacenamos en la variable "owner" la direccion de la persona 
    que despleiga el contrato  */

    constructor(string memory _name,string memory _symbol) ERC721(_name,_symbol) {
        
        owner = msg.sender;
    } 
}