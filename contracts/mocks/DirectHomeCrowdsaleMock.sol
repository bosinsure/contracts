pragma solidity ^0.4.18;


import "../BosiCrowdsale.sol";


// mock class using BosiCrowdsale
contract BosiCrowdsaleMock is BosiCrowdsale {

  function BosiCrowdsaleMock(uint256 _startTime, uint256 _endTime, uint256 _tokensPerEther, address _multisigVault) public
    BosiCrowdsale(new BosiToken(), _multisigVault)
  {
    setStartTime(_startTime);
    setEndTime(_endTime);
    setTokensPerEther(_tokensPerEther);
  }

  function setSoftCap(uint _softcap) public onlyOwner {
    softcap = _softcap;
  }
}
