pragma solidity ^0.4.18;

contract timeCapsule {
   
    mapping (address => string) message;
    mapping (address => uint) order;
    
    function setEntry(string entry) public {
       message[msg.sender] = entry;
       order[msg.sender] = entryOrder;
    }

    function getEntry(address account) public view returns(string, uint) {
      return (message[account], entryOrder[account]);
    }

}
