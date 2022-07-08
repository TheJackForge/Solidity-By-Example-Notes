/* There are 3 types of variables in Solidity.

Local 
    - Declared inside a function.
    - Not stored on the blockchain.

State
    - Declared outside of a function.
    - Stored on the blockchain.

Global
    - Provides information about the blockchain. */

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract Variables {

    // State variables are stored on the blockchain

    string public text = "Hello";
    uint public number = 123;

    function doSomething() public {

        // Local variables are not stored on the blockchain
        uint i = 456;

        // Here are some Global variables
        uint timestamp = block.timestamp; // Current block of timestamp
        address sender = msg.sender; // address of the caller


    }

}