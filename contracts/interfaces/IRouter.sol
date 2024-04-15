// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.10;

import {Client} from "../libraries/Client.sol";

interface IRouter {
    function routeMessage(
        Client.Any2EVMMessage calldata message,
        uint16 gasForCallExactCheck,
        uint256 gasLimit,
        address receiver
    ) external returns (bool success);
}
