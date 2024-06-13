// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract MyToken {

    // public variables here
    string public tokenName="TOKENS";
    string public tokenAbbrv="TKS";
    uint public totalSupply=0;

    // mapping variable here
    mapping(address=>uint) public acBalance;

    // mint function
    function mint(address _address, uint _value) public{
        totalSupply+=_value;
        acBalance[_address]+= _value;
    }

    // burn function
    function burn(address _address, uint _value) public{
        if(acBalance[_address]>= _value){
            totalSupply-=_value;
            acBalance[_address]-=_value;
        }
    }
}
