const BosiToken = artifacts.require('BosiToken');
const BosiTokenSale = artifacts.require('BosiCrowdsale');
var predeployedMultisigAddress = '0x1656db9B30dF98d08EF355bc3e0e3c684Ae5187a';

const debug = true;

var deployContractGasPrice = 31110000000;
module.exports = function(deployer, network) {
  if (network == 'kovan') {
    deployContractGasPrice = 1000000;     // 0.001 gwei, tested works on 21th march 2018
  } else if (network == 'ropsten') {
    predeployedMultisigAddress = '0xa14b768ac1526ef59c3418689143311afa21590b';
  }
  deployer.deploy(
    BosiToken, {overwrite: false, gas: 3900000, gasPrice: deployContractGasPrice}
  ).then(() => {
    if (debug) console.log('** BosiToken deployed at : ' + BosiToken.address);
    return deployer.deploy(
      BosiTokenSale,
      BosiToken.address,
      predeployedMultisigAddress, {overwrite: false, gas: 4900000, gasPrice: deployContractGasPrice}
    ).then(() => {
      if (debug) console.log('** BosiTokenSale deployed at : ' + BosiTokenSale.address);
      if (debug) console.log('** Deployment completed!');
    });
  }).catch(e => console.log(e));
}
