pragma solidity >=0.6.0 <0.9.0;
contract videoProvider{
     uint256 public age;
     string  public name;
     bool public allow;
     function set(string memory _name,uint256 _age) public
     {
        age = _age;
        name = _name;
        if(age>=18)
        {
            allow = true;
        }
        else
        {
            allow = false;
        }
     }
     function get() public view returns(uint256,string memory,bool)
     {
        return (age,name,allow);
     }
}
