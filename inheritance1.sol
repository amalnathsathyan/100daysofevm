pragma solidity ^0.8.0;
 
 /*Focus => 
 1.Contract B inherits a parent contract A 
 2.Override inherited functions*/

 contract A {
    function getContractName() public pure virtual returns(string memory){
        return("Contract A");
    }
 }

// now deploy the contract B in remix to see if B have inherited function from A
 contract B is A {

 }


// contract C deriving A but modifies the function
 contract C is A {
     function getContractName() public pure override returns(string memory){
         return "Contract C";
     }
 }



//giving parameters for constructors of deriving contract

contract D {
    string public word;
    constructor(string memory _name){
        word = _name;
    }
}

contract E is D("HelloWord") {

}

//or

contract F is D {
    constructor(string memory _name) D(_name) {

    }
}

