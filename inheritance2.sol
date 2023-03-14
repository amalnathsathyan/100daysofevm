pragma solidity ^0.8.0;
 
//inheritance from multiple parents
//contract C derives contract A and Contract B
contract A {
    function foo() public pure returns(string memory) {
        return "Foo from A";
    }
}
contract B {
     function hoo() public pure returns(string memory) {
        return "Hoo from B";
    }
}

//deploy and check if C has derived foo and hoo from the parent contracts
contract C is A,B {
    
}

//Now consider the case where both the contracts have same function foo
contract D {
    function foo() public pure returns(string memory) {
        return "Foo from D";
    }
}
contract F {
     function foo() public pure returns(string memory) {
        return "Foo from F";
    }
}

//deploy C to see which foo was inherited to C
contract C is D,F {
    //returns Foo from F
}

contract C is F,D {
    //returns Foo from D
}

// the order of writing the derived contracts should be from base-typed to most-derived

