const { ethers } = require("hardhat");
//const { ethers } = require("@swisstronik/ethers");

async function main() {
  const SwissV2 = await ethers.deployContract("SwisstronikV2", ["Hello Swisstronik!!"]);

  // Wait for the transaction to be mined
  await SwissV2.deployed();

  console.log(`SwisstronikV2 was deployed to ${SwissV2.address}`);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});