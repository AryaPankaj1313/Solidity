//SPDX-License-Identifier:MIT;
pragma solidity ^0.8.0;
contract user1
{
    uint public reading1;
    string public name1;
    address public con_add;
    function update_reading_1(address my_add,uint reading_U1) public
    {   //require(my_
        con_add = my_add;
        reading1 = reading_U1;
    }
    function update_name_1(address my_add,string memory name_U1) public
    {  // require(my_add==con_add);
       con_add = my_add;
        name1 = name_U1;
    }
    function get_reading_name_1(address my_add) external view returns (string memory,uint,address)
    {   
        require(my_add==con_add);
        return(name1,reading1,con_add);
    }
}

contract utility1{
    uint private readingsC1;
    string private  nameC1;
    address private addressC1;
    address private admin;
    address private user_2_add;
    address private user_3_add;
    
    constructor() 
    {
        admin = msg.sender;
        user_2_add = 0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB ;
        user_3_add = 0x17F6AD8Ef982297579C203069C1DbfFE4348c372;
        
    }
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
    function retrive_data_user2_utility1(user2 add_2 ,address _uadd) public view returns (string memory,uint,address )
    {
        require(msg.sender==admin);
        require(_uadd== user_2_add);
       return  add_2.get_reading_name_2(_uadd);
    }
    function retrive_data_user3_utility1(user3 add_3 ,address _uadd) public view returns (string memory,uint,address )
    {
        require(msg.sender==admin);
        require(_uadd== user_3_add);
       return  add_3.get_reading_name_3(_uadd);
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


// usser 2
contract user2
{
    uint public reading2;
    string public name2;
    address public con_add_2;
    function update_reading_2(address my_add,uint reading_U1) public
    {   
        con_add_2 = my_add;
        reading2 = reading_U1;
    }
    function update_name_2(address my_add,string memory name_U1) public
    {  
       con_add_2 = my_add;
        name2 = name_U1;
    }
    function get_reading_name_2(address my_add) external view returns (string memory,uint,address)
    {   
        require(my_add==con_add_2);
        return(name2,reading2,con_add_2);
    }
}
// u2
contract utility2{
    uint private readingsC2;
    string private  nameC2;
    address private addressC2;
    address private admin2;
    address private user_1_add;
    address private user_3_add;

    
    constructor() 
    {
        admin2 = msg.sender;
        user_1_add = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;
        user_3_add=0x17F6AD8Ef982297579C203069C1DbfFE4348c372;
    }
    function update_data_2(uint _reading , string memory _name,address _con_add) public
    {
        require(msg.sender==admin2);
        
            readingsC2 = _reading;
            nameC2 = _name;
            addressC2 = _con_add;
        
    }
    function retrive_data_user1_utility2(user1 add_1 ,address _uadd) public view returns (string memory,uint,address )
    {
        require(msg.sender==admin2);
        require(_uadd== user_1_add);
       return  add_1.get_reading_name_1(_uadd);
    }
    function retrive_data_user2_utility2() public view returns(string memory,uint,address)
    {
        return (nameC2,readingsC2,addressC2);
    }
    function retrive_data_user3_utility2(user3 add_3 ,address _uadd) public view returns (string memory,uint,address )
    {
        require(msg.sender==admin2);
        require(_uadd== user_3_add);
       return  add_3.get_reading_name_3(_uadd);
    }

     function update_reading_2(user2 add_2,uint reading_U2) public
    {
     require(msg.sender==admin2);
     readingsC2 = reading_U2;
     add_2.update_reading_2(addressC2,reading_U2);
    }
    function update_name_2(user2 add_2,string memory name_U2) public 
    {
        require(msg.sender==admin2);
        nameC2 = name_U2;
      add_2.update_name_2(addressC2,name_U2);
    }
}


// User 3
contract user3
{
    uint public reading3;
    string public name3;
    address public con_add_3;
    function update_reading_3(address my_add,uint reading_U3) public
    {   
        con_add_3 = my_add;
        reading3 = reading_U3;
    }
    function update_name_3(address my_add,string memory name_U3) public
    {  
       con_add_3 = my_add;
        name3 = name_U3;
    }
    function get_reading_name_3(address my_add) external view returns (string memory,uint,address)
    {   
        require(my_add==con_add_3);
        return(name3,reading3,con_add_3);
    }
}
// utility 3
contract utility3{
    uint private readingsC3;
    string private  nameC3;
    address private addressC3;
    address private admin3;
    address private user_1_add;
    address private user_2_add;

    
    constructor() 
    {
        admin3 = msg.sender;
        user_1_add = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;
        user_2_add = 0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB;
    }
    function update_data_3(uint _reading , string memory _name,address _con_add) public
    {
        require(msg.sender==admin3);
        
            readingsC3 = _reading;
            nameC3 = _name;
            addressC3 = _con_add;
        
    }
    function retrive_data_user1_utility3(user1 add_1 ,address _uadd) public view returns (string memory,uint,address )
    {
        require(msg.sender==admin3);
        require(_uadd== user_1_add);
       return  add_1.get_reading_name_1(_uadd);
    }
    function retrive_data_user3_utility3() public view returns(string memory,uint,address)
    {
        return (nameC3,readingsC3,addressC3);
    }
    function retrive_data_user3_utility2(user2 add_2 ,address _uadd) public view returns (string memory,uint,address )
    {
        require(msg.sender==admin3);
        require(_uadd== user_2_add);
       return  add_2.get_reading_name_2(_uadd);
    }

     function update_reading_2(user3 add_3,uint reading_U3) public
    {
     require(msg.sender==admin3);
     readingsC3 = reading_U3;
     add_3.update_reading_3(addressC3,reading_U3);
    }
    function update_name_2(user3 add_3,string memory name_U3) public 
    {
        require(msg.sender==admin3);
        nameC3 = name_U3;
      add_3.update_name_3(addressC3,name_U3);
    }
}
