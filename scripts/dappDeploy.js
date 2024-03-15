const { ethers } = require("hardhat");
require('dotenv').config();

async function main() {
    // Deploy Dapp contract
    const dapp = await ethers.getContractFactory("Dapp");

    const tokenBank = await dapp.deploy(process.env.DEPLOYED_ERC20);

    console.log("TokenBank deployed to:", tokenBank.target);
}

main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    });
