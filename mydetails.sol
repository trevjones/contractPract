//FROM https://medium.com/coinmonks/a-gentle-intro-to-building-a-full-stack-dapp-on-ethereum-part-1-c1aedb11fcd2

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
