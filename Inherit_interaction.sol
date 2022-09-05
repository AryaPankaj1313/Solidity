// SPDX-License-Identifier:MIT;
pragma solidity ^0.8.0;
contract ownable
{
    address owner;
    modifier onlyOwner()
    {
        require(msg.sender==owner,"must be an owner to get secret");
        _;
    }
    constructor() 
    {
        owner = msg.sender;
    }
}
// interaction btw two contracts
contract SecretVault
{
     string secret;
      constructor(string memory _secret)
    {
       secret = _secret;
    }

    function getSecret() public view returns(string memory)
  {
      return secret;
  }
}
contract inhert_interact is ownable{
    address secretVault;
    
    constructor(string memory _secret)
    {
       SecretVault _secretVault = new SecretVault(_secret);// making objects
       secretVault = address(_secretVault);
       super;
    }
  function getSecret() public view onlyOwner returns(string memory)
  {
      return SecretVault(secretVault).getSecret();
  }

}
