pragma solidity ^0.5.0;

contract Test{
    event Deposit(address indexed _from, bytes32 indexed _id, uint _value);
    function deposit(bytes32 id) public payable{
        emit Deposit(msg.sender , id, msg.value);
    }
    
    
    // Then access the contract's event in JavaScript code.
    // var abi = /* abi as generated using compiler */;
    // var ClientReceipt = web3.eth.contract(abi);
    // var clientReceiptContract = ClientReceipt.at("0x1234...ab67" /* address */);

    // var event = clientReceiptContract.Deposit(function(error, result) {
    //   if (!error)console.log(result);
    // });
}