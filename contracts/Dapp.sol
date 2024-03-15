// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract Dapp {
    IERC20 public token;

    constructor(address _token) {
        token = IERC20(_token);
    }

    function topUp(uint256 amount) external {
        require(token.transferFrom(msg.sender, address(this), amount), "Transfer failed");
    }

    function withdraw(address to, uint256 amount) external {
        require(token.transfer(to, amount), "Transfer failed");
    }

    function balanceOf(address account) external view returns (uint256) {
        return token.balanceOf(account);
    }
}
