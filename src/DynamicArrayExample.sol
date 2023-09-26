// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DynamicArrayExample {
    uint[] public data;

    function addData(uint _value) public {
        data.push(_value);
    }

    function removeData(uint _index) public {
        require(_index < data.length, "Invalid index");

        // Shift elements to the left to remove the element at _index
        for (uint i = _index; i < data.length - 1; i++) {
            data[i] = data[i + 1];
        }

        // Remove the last element
        data.pop();
    }
}
