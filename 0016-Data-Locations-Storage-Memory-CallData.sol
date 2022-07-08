/* Data Locations - Storage, Memory, and Calldata

Variables are declared as either storage, memory, or calldata to explicitly specify the location of the data.

Storage - variable is a state variable that is stored on the blockchain
Memory - variable is in memory and it exists while a function is being called
CallData - Special data function that contains function arguments */

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract DataLocations {

    uint[] public arr;
    mapping(uint => address) map;
    struct MyStruct {
        uint foo;
    }
    mapping(uint => MyStruct) myStructs;

    function f() public {
        // call _f with state variables
        _f(arr, map, myStructs[1]);

        // get a struct from a mapping
        MyStruct storage myStruct = myStructs[1];
        // create a struct in memory
        MyStruct memory myMemStruct = MyStruct(0);
    }

    function _f(
        uint[] storage _arr,
        mapping(uint => address) storage _map,
        MyStruct storage _myStruct 
    ) internal {
        // do something with the storage variables
    }

    // You can return memory variables
    function g(uint[] memory arr) public returns (uint[] memory) {
        // Do something with the memory array
    }

    function h(uint[] calldata _arr) external {
        // Do something with the calldata array
    }

}