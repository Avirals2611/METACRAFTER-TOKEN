// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;


contract MyToken {

    // Public variables to store token details
    string public tokenName;
    string public tokenAbbrv;
    uint256 public totalSupply;

    // Mapping from address to balance
    mapping(address => uint256) public balances;

    // Constructor to initialize the token details
    constructor(string memory _tokenName, string memory _tokenAbbrv) {
        tokenName = _tokenName;
        tokenAbbrv = _tokenAbbrv;
        totalSupply = 0; // Initial total supply is 0
    }

    // Function to mint new tokens
    function mint(address _to, uint256 _amount) public {
        // Increase the total supply by the minted amount
        totalSupply += _amount;
        // Increase the balance of the specified address
        balances[_to] += _amount;
    }

    // Function to burn tokens
    function burn(address _from, uint256 _amount) public {
        // Check if the balance of the sender is enough to burn the specified amount
        require(balances[_from] >= _amount, "Insufficient balance to burn");

        // Decrease the total supply by the burned amount
        totalSupply -= _amount;
        // Decrease the balance of the specified address
        balances[_from] -= _amount;
    }
}
