/* Error 

An error will undo all changes made to the state during a transaction

You can throw an error by calling require, revert, or assert

- require is used to validate inputs and conditions before execution.
- revert is similar to require. See the code below for details.
- assert is used to check for code that should never be false. Failing assertion probably means there is a bug.

Use custom error to save gas. */ 

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract Error {

    function testRequire(uint _i) public pure {
        // Require should be used to validate conditions such as:
        // - inputs
        // - conditions before execution
        // - return values from calls to other functions

        require(_i > 10, "Input must be greater than 10");
    }

    function testRevert(uint _i) public pure {
        
        if (_i < 10) {
            // Revert is useful when the condition to check is complex.
            // This code does the exact same thing as the example above.
            revert("Input must be greater than 10");
        }
    }

    uint public num;

    function testAssert() public view {
        // Assert should only be used to test for internal errors and to check for invariants. 

        // Here we assert that num is always equal to 0 since it is impossible to update the value of num. 

        assert(num == 0);
    }

    // Custom error

    error InsufficientBalance(uint balance, uint withdrawAmount);

    function testCustomError(uint _withdrawAmount) public view {
        uint bal = address(this).balance;
        if (bal < _withdrawAmount) {
            revert InsufficientBalance({balance: bal, withdrawAmount: _withdrawAmount});
        }
    }

}