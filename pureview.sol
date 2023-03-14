pragma solidity ^0.8.0;

contract ViewPure {
    uint public x = 2;

    //this function do not change any state variables
    function addToX(uint y) public view returns(uint) {
        return x+y;
    }

    //code itself is self explanatory and use remix to play around it by changing keywords

    function f() public {
        
    }

    function g() public view {

    }

    function callingNoViewFnInside() public view {
        f();
    }

    function callingViewFnInside() public view {
        g();
    }

    
}