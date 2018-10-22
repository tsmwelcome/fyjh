pragma solidity ^0.4.23;

import './Card.sol';

contract StandardCard is Card {
    constructor() public {
        rareType = Rarity.Standard;
    }

    function    auction() public{

    }

    function    borrow() public{

    }
}
