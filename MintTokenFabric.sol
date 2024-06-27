// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.8.2 <0.9.0;

interface IEthTransfer {
    function getOwnerBalance() external view returns (uint256);
}

contract BalanceOfETH{
    IEthTransfer ethTransfer;

    // Địa chỉ của EthTransfer contract được truyền vào constructor
    constructor(address _ethTransferAddress) {
        ethTransfer = IEthTransfer(_ethTransferAddress);
    }

    // Hàm để lấy số dư của owner từ EthTransfer contract
    function retrieveOwnerBalance() public view returns (uint256) {
        return ethTransfer.getOwnerBalance();
    }
}
