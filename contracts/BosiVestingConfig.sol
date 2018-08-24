pragma solidity ^0.4.18;

// ----------------------------------------------------------------------------
// Token Sale Configuration
// ----------------------------------------------------------------------------


contract BosiVestingConfig  {

    /* uint256 public constant TARGET_TRADING_START = 1533081600; // 2018-08-01 00:00:00 UTC */
    /* uint256 public constant PRIVATESALE_VESTING_START = TARGET_TRADING_START + 86400 * 30 * 2;
    uint256 public constant PRIVATESALE_VESTING_CLIFF = TARGET_TRADING_START + 86400 * 30 * 3;
    uint256 public constant PRIVATESALE_VESTING_DURATION = TARGET_TRADING_START + 86400 * 30 * 12; */

    uint256 public constant TARGET_TRADING_START = 1541044800; // 2018-11-01 12:00:00 GMT+8

    uint256 public constant PRIVATESALE_VESTING_START = TARGET_TRADING_START;
    uint256 public constant PRIVATESALE_VESTING_CLIFF = TARGET_TRADING_START;
    uint256 public constant PRIVATESALE_VESTING_DURATION = 1556596800; //1541044800 Add 6 months 15552000

    uint256 public constant FOUNDER_VESTING_START = TARGET_TRADING_START;
    uint256 public constant FOUNDER_VESTING_CLIFF = TARGET_TRADING_START + 86400 * 30;
    uint256 public constant FOUNDER_VESTING_DURATION = TARGET_TRADING_START + 86400 * 30 * 24;

}
