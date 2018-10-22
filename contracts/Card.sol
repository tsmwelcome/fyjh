pragma solidity ^0.4.23;

import 'zeppelin-solidity/contracts/token/ERC20/ERC20.sol';
import './Effect.sol';

contract Card is ERC20  {
    enum    CardType {Fellow,Strategy,Tool}
    enum    Rarity {Standard,Normal,Uncommon,OutStanding,Unique}
    uint    public  id;
    Effect  public  effect;
    string  public  frontImgUrl;
    string  public  backImgUrl;
    uint8   public  attackValue;
    uint8   public  defenseValue;
    uint8   public  speed;
    uint8   public  cost;   // how much food the card cost when it was played into the battle ground
    string  public  name;
    string  public  note;
    CardType   public  cardCategory;
    Rarity  public  rareType;

    uint8[]    public  totalAmount;    //save each standard cards total supply amount;
    uint8[]    public   cardList;    //save standard card's id;

    mapping (address => CardHolder)  playerCardsCount;   //save each player's card amount
    mapping (uint8 => uint8)    cardAvailable;  //save each card's remain amount;

    struct CardHolder {
        uint8   cardId;
        uint8   amount;
    }

    constructor() internal {

    }

    function setDefenseValue(uint8 value) public {
        defenseValue=value;
    }

    function attack(Card target) public{
        //attack target card
        require(target.defenseValue() > 0);
        if(target.defenseValue() > this.attackValue()){
            target.setDefenseValue(target.defenseValue() - this.attackValue());
        }
    }

    function defend(Card target) public{
        //defend target card
    }

    function list(address owner) public{
        // return the owner's card
    }

    function transfer(address from, address to, uint8 cardId) public{
        // transfer card to some one
    }
}
