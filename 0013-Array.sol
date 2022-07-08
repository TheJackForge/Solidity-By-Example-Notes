// Array can have a compile-time fixed size or dynamic size.

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract Array {

    // Several ways to initialize an array

    uint[] public arr;
    uint[] public arr2 = [1,2,3];

    // Fixed size array, all elements initialize to 0

    uint[10] public myFixedSizeArr;

    function get(uint i) public view returns (uint) {
        return arr[i];
    }

    // Solidity can return the entire Array
    // but this function should be avoided for arrays that
    // can grow indefinitely in length.

    function getArr() public view returns (uint[] memory) {
        return arr;
    }

    function push(uint i) public {
        // Append to array
        // This will increase the array length by 1
        arr.push(i);
    }

    function pop() public {
        // Remove the last element from array
        // This will decrease the array length by 1

        arr.pop();
    }

    function getLength() public view returns (uint) {
        return arr.length;
    }

    function remove(uint index) public {
        // Delete does not change the array length.
        // It resets the value at index to it's default value.abi
        // In this case 0

        delete arr[index];
    }

    function examples() external {
        // create an array in memory, only fixed size can be created

        uint[] memory a = new uint[](5);
    }
}