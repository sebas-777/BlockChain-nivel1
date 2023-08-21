// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract loops_conditionals { 

    // Suma de los 10 primeros numeros a partir de un numero introducido
    function sum(uint _number)public pure returns(uint) {
       
       //_number = 10
        uint aux_sum = 0;

    //Bucle for
    for (uint i = _number; i < (10 + _number); i++){
        aux_sum = aux_sum + i;
    } 

    return aux_sum;

    } 

    // Suma de los 10 primeros numeros impares 
    function odd() public pure returns (uint) {
        uint aux_sum = 0;
        uint counter = 0;
        uint counter_odd = 0;

        while (counter_odd < 10){
        
        // Par -> a % 2 = 0
        // Impar -> a % 2 != 0 
        if (counter % 2 !=0){
            aux_sum = aux_sum + counter;
            counter_odd++;
        }
            counter++;
        } 

        return  aux_sum;
    }
    
}