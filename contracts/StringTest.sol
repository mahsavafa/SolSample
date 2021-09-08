//SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;
pragma abicoder v2;

contract StringTest{
    
    string[] st;
    
    function add(string memory newValue)public{
        st.push(newValue);
    }
    
    function getList() public view returns(string[] memory){
        return st;
    }

}