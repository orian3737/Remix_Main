// SPDX-License-Identifier: MIT
// File: @chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol


pragma solidity ^0.8.0;

interface AggregatorV3Interface {
  function decimals() external view returns (uint8);

  function description() external view returns (string memory);

  function version() external view returns (uint256);

  function getRoundData(
    uint80 _roundId
  ) external view returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);

  function latestRoundData()
    external
    view
    returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);
}

// File: PriceFeedConsumer.sol



pragma solidity ^0.8.7;


contract PriceConsumerV3 {
    AggregatorV3Interface internal priceFeed;
    /**
     * Network: Rinkeby
     * Aggregator: ETH/USD
     * Address: 0x34437313752C9267fF25f4AA27D2dc1d67465eCB
     */

    constructor() {
        priceFeed = 
AggregatorV3Interface(0x34437313752C9267fF25f4AA27D2dc1d67465eCB);
    }

    /**
     * Returns the latest price
     */
    function getLatestPrice() public view returns (int) {
       (
            /*uint80 roundID*/,
            int price,
            /*uint startedAt*/,
            /*uint timeStamp*/,
            /*uint80 answeredInRound*/

        ) = priceFeed.latestRoundData();
        return price; 
    }
}