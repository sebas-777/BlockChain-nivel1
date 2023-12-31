// SPDX-License-Identifier: MIT
pragma solidity^0.8.4;

contract math {
        // Suma
        function suma(uint a , uint b) public pure  returns (uint) {
            return  a+b;
        } 

        //Resta
        function resta(int a , int b) public pure returns(int) {
            return  a-b;
        } 

        //Producto
        function prod(uint a , uint b) public pure returns(uint) {
            return a*b;
        } 

        //Division
        function div(uint a ,uint b) public pure returns(uint) {
            return a/b;
        }

        //Exponenciación
        function expon(uint a , uint b) public pure returns(uint)  {
            return a**b;
        } 

        //Modulo
        function mod(uint a , uint b) public pure returns(uint) {
            return a%b;
        } 

        //(x+y)%k
        function _addmod(uint x,uint y,uint k) public pure returns(uint, uint){
            return (addmod(x, y, k), (x+y)%k);
        } 

        //(x*y)%k 
        function _mulmod(uint x , uint y, uint k) public pure returns (uint,uint) {
            return (mulmod(x, y, k), (x+y)%k);
        }


}