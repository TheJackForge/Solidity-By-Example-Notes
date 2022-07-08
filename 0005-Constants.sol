/* Constants are variables that cannot be modified.

Their value is hard coded and using constants can save gas cost. */

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract Constants {
    // coding convention to uppercase variables.

    address public constant MY_ADDRESS = 0x19D88eAcB849dBF4B679c4788847f10cAb3A3E69;
    uint public constant MY_UINT = 123;
    
}