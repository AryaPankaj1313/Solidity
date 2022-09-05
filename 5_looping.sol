//SPDX-License-Identifier:MIT;
pragma solidity ^0.8.0;
contract mylooping{
    uint[] public array = [1,2,3,4,5,6,7,8,9];
    address public owner;
    constructor()
    {
        owner = msg.sender ;
    }

    function isEven(uint _num) public pure returns (bool)
    {
        if(_num %2==0)
        {
            return true;
        }
        else 
        {
            return false;
        }
    }
    function countEven() public view returns(uint)
    {
        uint count =0;
        for(uint i=0;i<array.length;i++)
        {
            if(isEven(array[i]))
            {
                count++;
            }
        }
        return count;
    }
    function isOwner() public view returns(bool)
    {
        return (msg.sender==owner);
    }
}
