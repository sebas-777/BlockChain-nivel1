// SPDX-License-Identifier: MIT
pragma solidity ^0.4.0;

contract Coin { 

    // La palabra clave "public hace que dicha variable 
    // pueden ser leidas desde fuera
    address public minter;
    mapping (address => uint) public balances;

    // los eventos permitena los clientes ligeros reacciionae 
    // de manera efecinete a los cambios
    event Sent(address from, address to ,uint amount);

    // Este es el constructor cuyo codigo
    // solo se ejecutara cuando se cree el contrato.
    function Coin() {
        minter = msg.sender;
    } 

    function mint(address receiver, uint amount) {
        if(msg.sender != minter) return;
        balances[receiver] += amount;
    }
    
    function send(address receiver,uint amount) {
        if(balances[msg.sender] < amount) return ;
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
        Sent(msg.sender, receiver, amount);
    }
}