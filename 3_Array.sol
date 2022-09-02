//SPDX-License-Identifier:MIT;
pragma solidity ^0.8.0;
contract ArrayCon{

    uint[] public uintArray = [1,2,3];
    string[] public stringArray = ["atul","ritu","kinjal","shashi"];
    string[] public values;

// 2d array
   uint256[][] public my2darray = [[1,2,3],[4,5,6]];
    function addVal(string memory _value) public{
        values.push(_value);
    }
    function sizeOfArray() public view returns(uint)
    {
        return values.length;
    }
}
