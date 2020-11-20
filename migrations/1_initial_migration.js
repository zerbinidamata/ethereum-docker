const Migrations = artifacts.require("Migrations");

module.exports = function (deployer) {
  web3.eth.personal.unlockAccount(
    "0x007ccffb7916f37f7aeef05e8096ecfbe55afc2f",
    "",
    15000
  );
  deployer.deploy(Migrations);
};
