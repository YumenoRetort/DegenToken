# ETH-AVAX Module 4 Project Degen Token

An ERC20 token contract that can be deployed on the Avalanche network for Degen Gaming. The smart contract should have the following functionality:

- Minting new tokens: The platform should be able to create new tokens and distribute them to players as rewards. Only the owner can mint tokens.

- Transferring tokens: Players should be able to transfer their tokens to others.

- Redeeming tokens: Players should be able to redeem their tokens for items in the in-game store.

- Checking token balance: Players should be able to check their token balance at any time.

- Burning tokens: Anyone should be able to burn tokens that they own that are no longer needed.

## Description

This project was made in compliance with Metacrafter's ETH-AVAX Module 4. The specific functions within the contract allow for the following: burn, mint, transfer tokens, view store, view token balance, and redeem tokens. Minting can only be done by the owner of the contract, and all transactions use test fuji avax.

## Getting Started

A Remix or Gitpod account is required to run this code. Additionally, a Metamask wallet with test funds is necessary to deploy the contract and create transactions.

## Executing program

### How to deploy the contract via HardHat
* Open the project with GitPod.
* Ensure that you adjust the variables in your hardhat.config.js file to your account's private key and your API key.
* In the terminal, follow the commands below: 

```
npm init -y
```
* Install HardHat
```
npm install --save-dev hardhat
```
* Run HardHat
```
npx hardhat
```
* Deploy contract on testnet, a successful deployment will output the contract address.
```
npx hardhat run scripts/deploy.js --network fuji
```
* Verify contract has been deployed
```
npx hardhat verify <YOUR TOKEN ADDRESS> --network fuji
```
* Completing this will have successfully deployed the contract on the testnet

### How to deploy the contract via Remix IDE

* Download the DegenToken.sol file.
* Open Remix IDE: https://remix.ethereum.org/
* Upload the .sol file.
* Ensure that your Metamask is currently connected to the Fuji server.
* Set the environment to "Injected Network - Metamask".
* Manually connect your Metamask account.
* Press "Deploy".
* This should successfully deploy the contract on the testnet. The contract address will be outputted in the terminal.
* From the Remix IDE, you should be able to perform transactions using the contract functions. Transactions performed on the testnet will appear at the contract address on the Snowtrace testnet.

## Help

If you are unable to deploy the contract or perform transactions, check that you are:

1) connected to the correct network,
2) have sufficient AVAX, 
3) are using the correct address.
  
For further concerns, refer to the official Solidity documentation or seek assistance from the Ethereum community forums.

## Authors

Erin Beatrice Micaela G. Reyes


## License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/YumenoRetort/DegenToken/blob/main/LICENSE) file for details.
