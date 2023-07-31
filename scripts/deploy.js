const hre = require("hardhat");

async function main() {
  const [deployer] = await hre.ethers.getSigners(); //Address of person who is the owner of contract
  console.log("Deploying contracts with account: ", deployer.address);

  const DegenToken = await hre.ethers.getContractFactory("DegenToken"); //Creates the instance of solidity contract

  // Deploy it
  const degenToken = await DegenToken.deploy();
  await degenToken.waitForDeployment();

  // Display the contract address
  console.log(`Degen token deployed to ${await degenToken.getAddress()}`);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});