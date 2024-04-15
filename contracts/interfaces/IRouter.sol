// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.10;

import {Client} from "github.com/code-423n4/2023-05-chainlink/blob/main/contracts/libraries/Client.sol";

interface IRouter {
    function routeMessage(
        Client.Any2EVMMessage calldata message,
        uint16 gasForCallExactCheck,
        uint256 gasLimit,
        address receiver
    ) external returns (bool success);

    // Add the swapExactTokensForTokens function definition here
    function swapExactTokensForTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external returns (uint256[] memory amounts);
}
