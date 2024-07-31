// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, ERC20Burnable, Ownable {

    mapping(uint256 => uint256) private adoptionCost;

    constructor() ERC20("Degen", "DGN") Ownable(msg.sender) {
        adoptionCost[1] = 50;
        adoptionCost[2] = 25;
        adoptionCost[3] = 100;
        adoptionCost[4] = 75;
    }

    function viewPetStore() public pure returns (string[] memory) {
        string[] memory items = new string[](4);
        items[0] = "1. Siberian Husky = 50";
        items[1] = "2. Abyssinian Cat = 25";
        items[2] = "3. Flemming Rabbit = 100";
        items[3] = "4. Chef Rat = 75";
        return items;
    }

    function mintDegen(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function getDegenBalance() external view returns (uint256) {
        return balanceOf(msg.sender);
    }

    function transferTokensTo(address _receiver, uint256 amount) external {
        require(balanceOf(msg.sender) >= amount, "Insufficient balance");
        _transfer(msg.sender, _receiver, amount);
    }

    function burnToken(uint256 amount) external {
        require(balanceOf(msg.sender) >= amount, "Insufficient balance");
        _burn(msg.sender, amount);
    }

    
    function redeemTokens(uint256 choice) external payable {
        require(choice >= 1 && choice <= 4, "Invalid selection");

        uint256 amountToRedeem = adoptionCost[choice];
        require(amountToRedeem > 0, "Invalid choice");
        require(balanceOf(msg.sender) >= amountToRedeem, "Insufficient balance");

        _transfer(msg.sender, owner(), amountToRedeem);
    }
}
