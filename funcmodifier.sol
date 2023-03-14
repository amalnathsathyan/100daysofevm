pragma solidity ^0.8.0;

contract FuncModifier {

    /*
    function modifiers are reusable code that can be attached to a function.
    this reusable code can be executed before and/or after the function is executed.
    Through out these 3 examples,the basic syntax for writing a function modifier and create a function modifier to restrict write access to a
    function,learn the syntax for passing parameters into a function modifier,
    and create a function modifier for input validation. Third one, Reenetrancy attack
    */
    // examples from https://youtu.be/thADMg9cKPM
    // Thank You @smartcontractprogrammer

    //1. Restric Write access
    //2. Validate Inputs
    //3. Reentrancy

    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only allowed for owner");
        _; // Tells solidity to execute the rest of the code
    }

    modifier validAddress(address _addr) {
        require(_addr != address(0), "Not valid address for new owner");
        _;
    } 

    function changeOnwer(address _newOwner) public onlyOwner validAddress(_newOwner) {  
        owner = _newOwner;
    }
}