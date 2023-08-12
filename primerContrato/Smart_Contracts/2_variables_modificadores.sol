// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4; 

contract variables_modicadores {

    // valores enteros sin signo(uint)
    uint a;
    uint8 public  b = 3; 

    // Valores enteros con signo(int)
    int c;
    int8 public  d = -32;
    int e = 65 ;

    //Variables string 
     string str;
     string public str_public = "Esto es publico";
     string private str_private = "Esto es privada";

     // Variable boolene
     bool boolean;
     bool public boolean_true = true;
     bool private boolean_false = false;

     // Variable bytes
     bytes32 first_bytes;
     bytes4 second_bytes; 
     bytes1 byte_3;
   

     // Algoritmo de hash
     bytes32 public hashing = keccak256(abi.encodePacked("Hola pendejo"));

     //Variable address
     address my_address;
     address public addressa = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
     address public address2 = msg.sender;

     //Variable de enumeracion
     enum options{ON,OFF}
     options state;
     options constant defaultChoice = options.OFF;

     function turnOn() public {
         state = options.ON;
     }

     function turnOff() public {
         state = options.OFF;
     } 

     function displayState() public view returns(options) {
         return state;
     }
    
}
