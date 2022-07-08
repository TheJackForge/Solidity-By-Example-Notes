/* To write or update a State variable you need to send a transaction.

On the other hand, you can read State variables, for free, without any transaction fee. */ 

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract SimpleStorage {
    // State variable to store a number.abi

    uint public num;

    // You need to send a transaction to write to a state variable.abi
    function set(uint _num) public {
        num = _num;
    }

    // You can read from a state variable without sending a transaction.abi

    function get() public view returns (uint) {
        return num;
    }
}

