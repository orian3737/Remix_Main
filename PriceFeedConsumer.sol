// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

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