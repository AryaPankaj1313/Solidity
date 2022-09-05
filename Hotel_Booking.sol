//SPDX-License-Identifier:MIT;
pragma solidity ^0.8.0;
contract hotelRoom
{
    address payable  public  owner;
   // enum
   enum status{vacant,occupied}
   status public currentStatus;

   // events 
   event occupy(address _occcupant, uint value);
    constructor ()  
    {
        owner = payable(msg.sender) ;
        currentStatus = status.vacant;
    }

// modifier function 
 // only when vacant will workonly when the room is vacant
   modifier onlywhenvacant
   {
     require(currentStatus ==status.vacant, "room occupied");
     _;
   }
    modifier cost(uint _amount)
    {
        require(msg.value>=_amount,"not enough ether paid");
        _;
    }
    function bookingHotel() payable public onlywhenvacant cost(2 ether)
    {
        // will check for enough ethereum payment
        //require(msg.value>=2 ether ,"not enough amount paid");
        // require(currentStatus ==status.vacant, "room occupied");

        currentStatus = status.occupied;
        owner.transfer(msg.value);// payiing the ether to owner of hotel
        emit occupy(msg.sender,msg.value); // using events to check who is the payer and how much he paid 
    }
}
