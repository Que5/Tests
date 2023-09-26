// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


import {Test, console2} from "forge-std/Test.sol";
import {DynamicArrayExample} from "../src/DynamicArrayExample.sol";


contract DynamicArrayExampleTest {
    DynamicArrayExample public dynamicArrayExample;

    function setUp() public {
        dynamicArrayExample = new DynamicArrayExample();
    }

    function testDoSVulnerability() public {
        // Add some initial data to the array
        for (uint i = 0; i < 10; i++) {
            dynamicArrayExample.addData(i);
        }

        // Call removeData with a large index to trigger DoS
        dynamicArrayExample.removeData(999999);
    }
}