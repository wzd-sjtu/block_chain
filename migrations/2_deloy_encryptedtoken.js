//获取智能合约的实例化对象
var EncryptedToken = artifacts.require("EncryptedToken.sol");

module.exports = function(deployer) {
  deployer.deploy(EncryptedToken);
};