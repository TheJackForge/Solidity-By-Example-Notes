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

    uint8 public u8 = 1;
    uint public u256 = 456;
    uint public u = 123;  // uint is an alias for 256

    // minimum and maximum of int

    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    address public addr = 0x19D88eAcB849dBF4B679c4788847f10cAb3A3E69;

    /* In Solidity, the data type byte represents a sequence of bytes.
    Solidity presents two types of byte types.

    - Fixed-size byte arrays
    - Dynamically-sized byte arrays

    The term bytes in Solidity represents a dynamic array of bytes.
    It's a shorthand for byte[] */

    bytes1 a = 0xb5; // [10110101]
    bytes1 b = 0x56; // [01010110]

    // Default Values
    // Unassigned Variables have a default value

    bool public defaultBoo; // False
    uint public defaultUint; // 0
    int public defaultInt; // 1
    address public defaultAddr; // 0x0000000000000000000000000000000000000000

}