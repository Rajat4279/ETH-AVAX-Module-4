# Degen Token

This Solidity program helps to create ERC20 tokens called degen tokens which can be minted only by the owner of the contract. The degen tokens can be used by players to exchange for rewards in the in-game store. The players can transfer their tokens to others, can check their token balance and can burn tokens when not needed. 

## Getting Started

1. Clone the repository:

```
https://github.com/Rajat4279/ETH-AVAX-Module-4
```

2. Install the dependencies :

```
npm i
```

3. Install the Openzepplin contracts:

```
npm install @openzeppelin/contracts
```

4. Open two additional terminals in your VS code.

In the second terminal type: npx hardhat node.

Before running the script make sure you have enough test avax in your metamask wallet. If not go to: https://faucet.avax.network/

In the third terminal, type: ```npx hardhat run scripts/deploy.js --network fuji```

Can verify by typing: ```npx hardhat verify (token address)  --network fuji```




To interact with various fucntions, use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.
But first, connect Remix and your local file system:
cd to your project and install remixd package:

```
npm install -g @remix-project/remixd
```
Check if installed and then run:

```
remixd --version
remixd
```

Now open the Remix website, click on default workspace and change it to "connect with localhost". Compile your contract. Then go to deploy section and change environment to "Injected Provider". This will help you to connect your metamask wallet. Click on deploy to deploy the contract. Now, you can use the various functions to interact with the contract and mint, burn and transfer your tokens as well as redeem rewards.
## Technologies Used 
- Remix - an online Solidity IDE  
- MetaMask - Wallet and gateway to Ethereum blockchain  
- ethers.js - Library for interacting with Ethereum smart contracts  
- Hardhat - Development environment and task runner for building, testing, and deploying smart contracts on Ethereum and other blockchain platforms
## Authors

- Rajat
