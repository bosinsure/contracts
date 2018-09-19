pragma solidity ^0.4.18;

// ----------------------------------------------------------------------------
// Token Sale Configuration
// ----------------------------------------------------------------------------


contract BosiCrowdsaleConfig  {

    uint256 public constant CROWDSALE_START_TIME      = 1546401600; // 2018-05-15 04:00:00 GMT
    uint256 public constant CROWDSALE_END_TIME        = 1554004800; // 2018-07-15 04:00:00 GMT
    uint256 public constant CONTRIBUTION_MIN          = 1 ether;
    uint256 public constant CONTRIBUTION_MAX_NO_WHITELIST  = 65 ether;    // maximum acceptable contribution without whitelisting
    uint256 public constant HARDCAP                   =  100000 ether;
    uint256 public constant SOFTCAP                   =  10000 ether;

    // Default conversion rate when deployed, changable later by
    // calling the setTokensPerWei function on TokenSale contract

    // For illustration: tokens are priced at 1 USD/token.
    // So if we have 800 USD/ETH -> 800 USD/ETH / 0.8 USD/token = ~1000
    uint256 public constant TOKENS_PER_ETHER       = 3000; // 10**(uint256(18));

}
