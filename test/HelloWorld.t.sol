// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import {HelloWorld} from "../src/HelloWorld.sol";

contract HelloWorldTest is Test {
    HelloWorld public helloWorld;

    function setUp() public {
        helloWorld = new HelloWorld();
    }

    function test_Greet() public view {
        string memory greeting = helloWorld.greet();
        require(keccak256(abi.encodePacked(greeting)) == keccak256(abi.encodePacked("Hello World!")), "Incorrect greeting");
    }
}





  
