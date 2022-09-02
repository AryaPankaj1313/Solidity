// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Counter{

    uint count;
    constructor () public{
        count =0;
    }
    function setCount(uint _count) public {
        count = _count;
    }
    
    function incrementCount() public 
    {
        count = count+1;
    }
    function getCount() public view returns(uint)
    {
        return count;
    }
}

/* other method or effective method
whenever we use public state variable we don't need getCount function*/
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract  NewCounter{

    uint public count;
    
    function incrementCount() public 
    {
        count++;
    }
    
}
