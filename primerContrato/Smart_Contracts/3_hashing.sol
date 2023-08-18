// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4 ;

contract hashing { 

 // Algoritmo de hash

 bytes32 public hashing_keccak256 = keccak256(abi.encodePacked("Hola","Isa"));
 bytes32 public hashing_sha256 =sha256(abi.encodePacked("Hello Pendejos!"));
 bytes20 public hashing_ripemd160 = ripemd160(abi.encodePacked("Hello word!"));
 string public  hello = "pendejos!";
    
}