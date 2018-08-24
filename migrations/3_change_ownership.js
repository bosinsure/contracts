const BosiToken = artifacts.require('BosiToken');
const BosiTokenSale = artifacts.require('BosiCrowdsale');

const saleContractOwner = '0x51DEB6be3B2166AB60e40CED2d7bea2f92d923Fd';

const debug = true;

var BosiTokenInstance;
var BosiTokenSaleInstance;

if (debug) console.log('^ BosiToken deployed at : ' + BosiToken.address);
if (debug) console.log('^ BosiTokenSale deployed at : ' + BosiTokenSale.address);

var BosiTokenInstance = BosiToken.at(BosiToken.address);
var BosiTokenSaleInstance = BosiTokenSale.at(BosiTokenSale.address);

module.exports = function(deployer) {
  deployer.then(function(){
    if (debug) console.log('Changing ownership of BosiToken');
    return BosiTokenInstance.transferOwnership(BosiTokenSale.address);

  }).then(function(result) {
    if (debug) console.log('Changing ownership of BosiTokenSaleInstance');
    return BosiTokenSaleInstance.transferOwnership(saleContractOwner);
  }).then(function(result) {
    if (debug) console.log('** Ownership change completed!');
  }).catch(e => console.log(e));
}
