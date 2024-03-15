//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

//creating our own ERC20
contract Horizon is ERC20 {
    uint constant _initial_supply = 10000 * (10**18);
    constructor() ERC20("Horizon", "HRZ") {
        _mint(msg.sender, _initial_supply);
    }
}