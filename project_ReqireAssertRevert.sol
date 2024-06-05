// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ReqireAssertRevert {
    address public addRess;
    uint public balance;
    constructor() {
        balance = 0;
        addRess = msg.sender;
    }

    modifier onlyowner() {
        require(addRess == msg.sender, "he is not the Owner");
        _;
    }

    function addBalance(uint _sendbalance) public onlyowner {
        balance += _sendbalance;
        assert(balance >= _sendbalance);
    }

    error sendError(string, uint);

    function reduceBalance(uint _reducebalance) public onlyowner {
        if (balance < _reducebalance) {
            revert sendError("amount left is", balance);
        }
        balance -= _reducebalance;
        assert(balance >= 0);
    }
}
