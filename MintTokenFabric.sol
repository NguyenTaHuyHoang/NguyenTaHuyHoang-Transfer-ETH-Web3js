pragma solidity ^0.8.0;

contract MintTokenFabric {
    uint256 balance;

    function setBalance(uint256 value) public {
        balance = value;
    }

    function getBalance() public view returns(uint256) {
        return balance;
    }
}
