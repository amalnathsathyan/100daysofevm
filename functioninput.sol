pragma solidity ^0.8.0;

contract FunctionInput {
    // function mapInput(mapping(uint => uint) memory map) public {
    // };

    function multiDimenFixedSizeArrayInput(uint[9][9] memory _arr) public {

    }

    function multiDimenDynamicArrayInput (uint[][] memory _arr) public {

    }

    //Not recommeded to take array as inputs to function. Instead we can have an upperbound for array size
    //like this 

    uint max_arr_size = 10;

    function arrInput(uint[] memory _arr) public {
        if(_arr.length > 10) {
            //throw error
        }
    }
}