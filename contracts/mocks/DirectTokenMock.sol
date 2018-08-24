pragma solidity ^0.4.18;


import "../BosiToken.sol";


// mock class using BosiToken
contract BosiTokenMock is BosiToken {

  function BosiTokenMock(address initialAccount, uint256 initialBalance) public {
    balances[initialAccount] = initialBalance;
    totalSupply_ = initialBalance;
  }

  function currentTime() public view returns (uint256) {
    return now;
  }

}
