// SPDX-License-Identifier: GPL-30
pragma solidity ^0.8.15;

contract clientContract {

     uint private balanceReceived;

    function receiveMoney() public payable {
        balanceReceived += msg.value;
    }

    function getBalance() public view returns(uint) {
        return address(this).balance;
    }


// Function to pay to the insurance conpany using them address
    function payToConpany(address payable _to) public {
        _to.transfer(getBalance());
    }    
}