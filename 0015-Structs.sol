/* You can define your own type by creating a struct

They are useful for grouping together related data.

Structs can be declared outside of a contract and imported into another contract. */

// SPDC-License-Identifier: MIT

pragma solidity ^0.8.13;

contract Todos {

    struct Todo {
        string text;
        bool completed;
    }

    // An array of Todo structs
    Todo[] public todos;

    function create(string calldata _text) public {
        // 3 ways to initialize a struct
        // - Calling it like a function

        todos.push(Todo(_text, false));

        // - Key value mapping

        todos.push(Todo({text: _text, completed: false}));

        // - Initialize an emptry struct and then update it

        Todo memory todo;
        todo.text = _text;
        // todo.completed initialized to false

        todos.push(todo);
    }

    // Solidity automatically created a getter for 'todos' so 
    // you don't actually need this function

    function get(uint _index) public view returns (string memory text, bool completed) {
        Todo storage todo = todos[_index];
        return (todo.text, todo.completed);
    }

    // update text

    function updateText(uint _index, string calldata _text) public {
        Todo storage todo = todos[_index];
        todo.text = _text;
    }

    // update completed

    function toggleCompleted(uint _index) public {
        Todo storage todo = todos[_index];
        todo.completed = !todo.completed;
    }

}

