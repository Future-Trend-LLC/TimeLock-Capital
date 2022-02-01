
const BIATimeLock = artifacts.require("BIATimeLock");

module.exports = function (deployer) {
  deployer.deploy(
      BIATimeLock, 
      "0x5BB72DCCDc5489F22CB8ED1cddc113e12e8FcdDa",
      "0x6BaC6145006f45d96004e8d03a13BB72C5cbca91");

 };