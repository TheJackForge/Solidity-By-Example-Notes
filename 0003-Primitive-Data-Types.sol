// Primitive Data Types in Solidity
// - boolean 
// - uint 
// - int 
// - address

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract Primitives {

    bool public boo = true;

    /*
    uint stands for unsigned integer, meaning non negative integers.

    Different sizes are available: 

        uint8: ranges from 0 to 2 ** 8 - 1
        uint16: ranges from 0 to 2 ** 16 - 1
        ...
        uint256: ranges from 0 to 2 ** 256 - 1
    */

    uint8 public i8 = 1;
    uint public u256 = 456;
    uint public u = 123;  // uint is an alias for 256

    

}