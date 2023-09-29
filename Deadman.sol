// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DeadmansSwitch {
    address public owner;
    address public beneficiary;
    uint256 public lastCheckBlock;
    
    constructor(address _beneficiary) {
        owner = msg.sender;
        beneficiary = _beneficiary;
        lastCheckBlock = block.number;
    }
    
    modifier onlyOwner() {
        require(msg.sender == owner, "This function can only be called by the owner");
        _;
    }
    
    function updateLastCheckBlock() external onlyOwner {
        lastCheckBlock = block.number;
    }
    
    function activateSwitch() external {
        require(block.number - lastCheckBlock >= 10, "The last check has not reached 10 blocks yet");
        payable(beneficiary).transfer(address(this).balance);
    }
}
