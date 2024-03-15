async function main() {
  const [deployer] = await ethers.getSigners();

  console.log("Deploying contracts with the account:", deployer.address);
  
  const provider = deployer.provider;
  const weiAmount = (await provider.getBalance(deployer.address)).toString();
  
  console.log("Deployer's balance:", weiAmount);

  const Token = await ethers.getContractFactory("Horizon");
  const token = await Token.deploy();

  console.log("Token address:", token.target);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
});