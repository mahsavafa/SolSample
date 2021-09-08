//SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;
pragma abicoder v2;

contract StructTest{
    struct User{
        uint id;
        string name;
    }
    User user;
    mapping(uint => User) private users;
    
    
    function setUser(User memory _user) public{
        users[_user.id] = _user;
    }
    function setUser(uint  id,string memory name)public{
        user= User(id , name);
    }
    function setUser()public{
        users[1] = User(1,'mahsa');
        users[2] = User(2,'hossein');
        users[3] = User(3,'hashem');
        users[4] = User(4,'mahboob');
    }
    
    function getUser(uint id)public view returns(User memory){
        return users[id];
    }
    function getAll () public view returns(User[] memory  ){
        User[] memory ret = new User[](4);
        for(uint8 i =0;i<4;i++){
            ret[i]=users[i+1];
        }
        return ret;
        
    }
}