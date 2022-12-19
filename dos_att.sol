//SPDX-License-Identifier:MIT;
pragma solidity ^0.8.0;
contract user1
{
    uint public reading1;
    string public name1;
    address public con_add;
    constructor()
    {
        con_add = msg.sender;
    }
    function update_reading_1(address my_add,uint reading_U1) public
    {   
        require(my_add==con_add);
        //con_add = my_add;
        reading1 = reading_U1;
    }
    function update_name_1(address my_add,string memory name_U1) public
    {  require(my_add==con_add);
       //con_add = my_add;
        name1 = name_U1;
    }
    function get_reading_name_1(address my_add) external view returns (string memory,uint,address)
    {   
        require(my_add==con_add);
        return(name1,reading1,con_add);
    }
}

contract DOS_ATTACK{
    uint private readingsC1;
    string private  nameC1;
    address private addressC1;
    address private admin = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    
    
    function update_data_1(uint _reading , string memory _name,address _con_add) public
    {
        require(msg.sender==admin);
        
            readingsC1 = _reading;
            nameC1 = _name;
            addressC1 = _con_add;
        
    }
    function retrive_data_user_1_utility1() public view returns (string memory,uint,address )
    {
        require(msg.sender==admin);
        
            return (nameC1,readingsC1,addressC1);
        
    }
     function update_reading_u1(user1 add_1,uint reading_U1) public
    {
     require(msg.sender==admin);
     readingsC1 = reading_U1;
     add_1.update_reading_1(addressC1,reading_U1);
    }
    function update_name_u1(user1 add_1,string memory name_U1) public 
    {
        require(msg.sender==admin);
        nameC1 = name_U1;
      add_1.update_name_1(addressC1,name_U1);
    }
}
