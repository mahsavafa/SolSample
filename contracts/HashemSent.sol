pragma solidity ^0.5.0;


contract Hashem{
/**
     * @dev Execute a transaction
     * @param data the encoded data of the transaction
     */
    function execute(bytes memory data) internal returns (bool success) {
        address to = address (this);
        // We require some gas to emit the events (at least 2500) after the execution
        uint256 gasToCall = gasleft() - 2500;
        assembly {
            success := call(gasToCall, to, 0, add(data, 0x20), mload(data), 0, 0)
        }
    }
}