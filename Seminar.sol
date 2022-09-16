//SPDX-License-Identifier:MIT;
pragma solidity ^0.8.0;
contract user1
{
    uint public reading1;
    string public name1;
    address public con_add;
    constructor (address _user) 
    {
      con_add = _user;
    }
    function update_reading(address my_add,uint reading_U1) public
    {   require(my_add==con_add);
        reading1 = reading_U1;
    }
    function update_name(address my_add,string memory name_U1) public
    {   require(my_add==con_add);
        name1 = name_U1;
    }
    function get_reading_name(address my_add) public view returns (uint,string memory)
    {   
        require(my_add==con_add);
        return(reading1,name1);
    }
}
contract utility1{
    uint private readingsC;
    string private  nameC;
    address private addressC;
    address private admin;
    
    constructor() 
    {
        admin = msg.sender;
        user1 con_add = new user1(addressC);
        addressC = address(con_add);
    }
    function update_data(uint _reading , string memory _name) public
    {
        require(msg.sender==0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
        
            readingsC = _reading;
            nameC = _name;
        
    }
    function retrive_data() public view returns (uint,string memory,address )
    {
        require(msg.sender==0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
        
            return (readingsC,nameC,addressC);
        
    }
    
     function update_reading(uint reading_U1) public
    {
     require(admin==msg.sender);
     user1(addressC).update_reading(addressC,reading_U1);
    }
    function update_name(string memory name_U1) public 
    {
        require(admin==msg.sender);
      user1(addressC).update_name(addressC,name_U1);
    }
}
