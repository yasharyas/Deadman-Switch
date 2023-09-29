# Deadman's Switch Smart Contract

This Solidity smart contract implements a Deadman's Switch, allowing for automated actions if the owner does not perform a periodic check within a specified block range.

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Usage](#usage)
- [License](#license)

## Introduction

This contract provides a Deadman's Switch functionality, where the owner must perform a periodic check within a specified block range. If the owner fails to perform the check, a designated beneficiary can trigger an action, such as transferring the contract's balance.

## Features

- Owner can set a beneficiary address during contract deployment.
- The owner can update the last check block.
- The beneficiary can trigger a switch activation if the last check block has not been updated for a specified number of blocks.

## Usage

1. Deploy the contract by specifying the beneficiary's address.
2. The contract owner can periodically call the `updateLastCheckBlock` function to update the last check block.
3. If the last check block has not been updated for a specified number of blocks (e.g., 10 blocks), the beneficiary can call the `activateSwitch` function to transfer the contract's balance to the beneficiary's address.

## License

This smart contract is released under the [MIT License](LICENSE). See the [LICENSE](LICENSE) file for more details.
