pragma solidity ^0.4.18;

contract timeCapsule {
   
    mapping (address => string) message;
    mapping (address => uint) order;
    uint entryOrder = 0; //establish first entry : "000"
    
    function setEntry(string entry) public {
       message[msg.sender] = entry;
       order[msg.sender] = entryOrder;
       entryOrder++; //increment entry #
    }

    function getEntry(address account) public view returns(string, uint) {
      return (message[account], order[account]);
    }

}
