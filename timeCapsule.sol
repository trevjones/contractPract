pragma solidity ^0.4.18;

contract timeCapsule {
   
    address capsule;
    mapping (address => string) message;
    mapping (address => uint) order;
    uint entryOrder = 0; //initialize entries => "000"
    
    function setEntry(string entry) public {
       message[capsule] = entry;
       order[capsule] = entryOrder;
       entryOrder++; //increment entry #
    }

    function getEntry() public view returns(string, uint) {
      return (message[capsule], order[capsule]);
    }
    
}
