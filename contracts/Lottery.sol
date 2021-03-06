pragma solidity ^0.4.19;

contract Lottery{
    address public manager;
    address[] public players;
    
    
    function Lottery ()public{
        manager = msg.sender;
    }
    
    function getPlayers() public view returns (address[]){
        return players;
    }    
    
    function enter() public payable{
        require(msg.value >.01 ether);
        players.push(msg.sender);
    }
    
    
    function random () private view returns(uint) {
        return uint(keccak256(block.difficulty , now , players));
    }
    
    function pickWinner ()public restricted{
    uint index = random() % players.length;
    players[index].transfer(this.balance);
    players = new address[](0);
    }
    
    function getEntire() public restricted{
        manager.transfer(this.balance);
        
    }
    
    modifier restricted(){
        require(msg.sender == manager);
        _;
    }
}