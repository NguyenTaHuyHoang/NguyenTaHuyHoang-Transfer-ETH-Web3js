[
	{
		"inputs": [],
		"name": "deposit",
		"outputs": [],
		"stateMutability": "payable",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "address payable",
				"name": "recipient",
				"type": "address"
			}
		],
		"name": "sendEth",
		"outputs": [],
		"stateMutability": "payable",
		"type": "function"
	},
	{
		"stateMutability": "payable",
		"type": "receive"
	}
]

pragma solidity ^0.8.0;

contract EthTransfer {
    // Hàm để gửi ETH
    function sendEth(address payable recipient) public payable {
        require(msg.value > 0, "Must send some ETH");
        recipient.transfer(msg.value);
    }

    // Hàm để gửi ETH vào hợp đồng
    function deposit() public payable {
        require(msg.value > 0, "Must send some ETH");
    }
    
    // Hàm dự phòng để chấp nhận tiền gửi ETH
    receive() external payable {}

}
