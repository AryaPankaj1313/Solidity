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
    function update_reading_user1(address my_add,uint reading_U1) public
    {   require(my_add==con_add);
        reading1 = reading_U1;
    }
    function update_name_user1(address my_add,string memory name_U1) public
    {   require(my_add==con_add);
        name1 = name_U1;
    }
    function get_reading_name_user1(address my_add) public view returns (string memory,uint)
    {   
        require(my_add==con_add);
        return(name1,reading1);
    }
}
contract utility1{
    uint private readingsC;
    string private  nameC;
    address public addressC;
    address private admin;
    address private admin_helper1=0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db;
    address private admin_helper2 = 0x617F2E2fD72FD9D5503197092aC168c91465E7f2;
    
    
    constructor() 
    {
        admin = msg.sender;
    }
    function update_data(uint _reading , string memory _name,address user1_add) public
    {
        require(msg.sender == admin || msg.sender==admin_helper2 || msg.sender==admin_helper2); 
            addressC =  user1_add;
            readingsC = _reading;
            nameC = _name;
        
    }
    function retrive_data() public view returns (string memory,uint,address )
    {
          require(msg.sender == admin || msg.sender==admin_helper2 || msg.sender==admin_helper2);
            return (nameC,readingsC,addressC);
        
    }
    
     function update_reading(uint reading_U1,address con_add) public
    {
      require(msg.sender == admin || msg.sender==admin_helper2 || msg.sender==admin_helper2);
      require(addressC == con_add);
      readingsC = reading_U1;
    }
    function update_name(string memory name_U1,address con_add) public 
    {
         require(msg.sender == admin || msg.sender==admin_helper2 || msg.sender==admin_helper2);
         require(addressC == con_add);
         nameC = name_U1;
         
    }
}


//  user 2

contract user2
{
    uint public reading2;
    string public name2;
    address public con_add_2;
    constructor (address _user_2) 
    {
      con_add_2 = _user_2;
    }
    function update_reading_user2(address my_add_2,uint reading_U2) public
    {   require(my_add_2 == con_add_2);
        reading2 = reading_U2;
    }
    function update_name_user2(address my_add_2,string memory name_U2) public
    {   require(my_add_2==con_add_2);
        name2 = name_U2;
    }
    function get_reading_name_user2(address my_add_2) public view returns (string memory,uint)
    {   
        require(my_add_2==con_add_2);
        return(name2,reading2);
    }
}
// utility 2
contract utility2{
    uint private readingsC2;
    string private  nameC2;
    address private addressC2;
    address private admin =0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db;
    address private admin_helper1=0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    address private admin_helper2 = 0x617F2E2fD72FD9D5503197092aC168c91465E7f2;
    
    
    constructor() 
    {
        admin = msg.sender;
        
    }
    function update_data_2(uint _reading_2 , string memory _name_2,address user2_add) public
    {
        require(msg.sender == admin || msg.sender==admin_helper2 || msg.sender==admin_helper2); 
           addressC2 = user2_add;
            readingsC2 = _reading_2;
            nameC2 = _name_2;
        
    }
    function retrive_data_2() public view returns (string memory,uint,address )
    {
          require(msg.sender == admin || msg.sender==admin_helper2 || msg.sender==admin_helper2);
            return (nameC2,readingsC2,addressC2);
        
    }
    
     function update_reading_2(uint reading_U2,address con2_add) public
    {
        require(msg.sender == admin || msg.sender==admin_helper2 || msg.sender==admin_helper2);
         require(addressC2 == con2_add);
         readingsC2 = reading_U2;
    }
    function update_name_2(string memory name_U2,address con2_add) public 
    {
       require(msg.sender == admin || msg.sender==admin_helper2 || msg.sender==admin_helper2);
         require(addressC2 == con2_add);
         nameC2 = name_U2;

    }
}

// user3
contract user3
{
    uint public reading3;
    string public name3;
    address public con_add_3;
    constructor (address _user_3) 
    {
      con_add_3 = _user_3;
    }
    function update_reading_user3(address my_add_3,uint reading_U3) public
    {   require(my_add_3==con_add_3);
        reading3 = reading_U3;
    }
    function update_name_user3(address my_add_3,string memory name_U3) public
    {   require(my_add_3==con_add_3);
        name3 = name_U3;
    }
    function get_reading_name_user3(address my_add_3) public view returns (string memory,uint)
    {   
        require(my_add_3==con_add_3);
        return(name3,reading3);
    }
}
// utility 3
contract utility3{
    uint private readingsC3;
    string private  nameC3;
    address private addressC3;
    address private admin=0x617F2E2fD72FD9D5503197092aC168c91465E7f2;
    address private admin_helper1=0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db;
    address private admin_helper2 = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    
    
    constructor() 
    {
        admin = msg.sender;
        
    }
    function update_data(uint _reading_3 , string memory _name_3,address con3_add) public
    {
        require(msg.sender == admin || msg.sender==admin_helper2 || msg.sender==admin_helper2);  
            addressC3 = con3_add;
            readingsC3 = _reading_3;
            nameC3 = _name_3;
        
    }
    function retrive_data_3() public view returns (string memory,uint,address )
    {
          require(msg.sender == admin || msg.sender==admin_helper2 || msg.sender==admin_helper2);
            return (nameC3,readingsC3,addressC3);
        
    }
    
      function update_reading_3(uint reading_U3,address con3_add) public
    {
        require(msg.sender == admin || msg.sender==admin_helper2 || msg.sender==admin_helper2);
         require(addressC3 == con3_add);
         readingsC3 = reading_U3;
    }
    function update_name_3(string memory name_U3,address con3_add) public 
    {
       require(msg.sender == admin || msg.sender==admin_helper2 || msg.sender==admin_helper2);
         require(addressC3 == con3_add);
         nameC3 = name_U3;

    }
}
