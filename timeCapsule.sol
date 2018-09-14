pragma solidity ^0.4.18;

contract timeCapsule {
   
    mapping (address => string) message;
    mapping (address => uint) order;
    
    function setEntry(string message) public {
       message[msg.sender] = message;
       order[msg.sender] = now;
    }

    function getEntry(address account) public view returns(string, uint) {
      return (message[account], order[account]);
    }

}

/******ORIGINAL SNIPPET FUNCTIONING SMART CONTRACT EXAMPLE*******************
pragma solidity ^0.4.18;

contract MyDetails {
   
    mapping (address => string) ipfsHashes;
    mapping (address => uint) timestamp;
    
    function setHash(string ipfsHash) public {
       ipfsHashes[msg.sender] = ipfsHash;
       timestamp[msg.sender] = now;
    }

    function getHash(address account) public view returns(string, uint) {
      return (ipfsHashes[account], timestamp[account]);
    }

}
**************************************************************************/
