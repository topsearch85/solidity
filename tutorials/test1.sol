// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract TestContract {
    string public hello = "Hello World!";
    address payable public seller;
    address payable public buyer;

    struct Order {
        string description;
        bool completed;
    }

    function comfirmOrder() public {
        buyer = payable(msg.sender);
    }

    constructor (string memory _text){
        hello = _text;
    }

}