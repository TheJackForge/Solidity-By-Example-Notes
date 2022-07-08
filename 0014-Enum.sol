/* Solidity supports enumerables and they are useful to model choice and keep track of state.

Enums can be declared outside of a contract */

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract Enum {

    // Enum representing shipping status

    enum Status {

        Pending,
        Shipping,
        Accepted,
        Rejected,
        Canceled
    }

    // Default value is the first element listed in
    // definition of the type, in this case "Pending"

    Status public status;

    // Returns uint
    // Pending - 0
    // Shipping - 1
    // Accepted - 2
    // Rejected - 3
    // Canceled - 4

    function get() public view returns (Status) {
        return status;
    }

    // Update status by passing uint into the input

    function set(Status _status) public {
        status = _status;
    }

    // You can update to a specific enum like this

    function cancel() public {
        status = Status.Canceled;
    }

    // Delete resets the enum to its first value, in this case that would be 0

    function reset() public {
        delete status;
    }

}
