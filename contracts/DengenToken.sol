// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, Ownable{
    // cuntructor call
    constructor() ERC20("Degen", "DGN") {}
    // storing the owner of DegenToken contract
    address ownerOfContract = msg.sender;

    // Function to mint the token
    function mint(address to, uint256 amount) public onlyOwner {
        // Calling _mint function present in ERC20
        _mint(to, amount);
    }

    // Function to burn the token
    function burnTokens(uint amount) public {
        // Calling _burn function present in ERC20
        _burn(msg.sender, amount);
    }


    // Function to get the balance
    function getBalance() external view returns (uint256) {
        // Getting the balacne of function caller
        return this.balanceOf(msg.sender);
    }

    // Storing all the items in storeItems state variable
    string public storeItems = "List of Items; 1 Potion of Poison(100 DGN) 2 Potion of Swiftness(200 DGN) 3 Potion of fire Resistance(300 DGN) 4 Potion of Invisibility(400 DGN)";

    function redeemTokens(uint8 num) external returns(string memory){
        // checking for the equality 
        if(num == 1){
            //cheking if the function caller has sufficient balance
            require(balanceOf(msg.sender) >= 100, "You do not have enough Degen Tokens");
            // tranfering 100 DGN to owners account
            bool success = transfer(ownerOfContract, 100);
            if(success == true){
                return "Now you have Potion of Poison";
            }
        }
        else if(num == 2){
            //cheking if the function caller has sufficient balance
            require(balanceOf(msg.sender) >= 200, "You do not have enough Degen Tokens");
            // tranfering 200 DGN to owners account
            bool success = transfer(ownerOfContract, 200);
            if(success == true){
                return "Now you have Potion of Swiftness";
            }
        }
        else if(num == 3){
            //cheking if the function caller has sufficient balance
            require(balanceOf(msg.sender) >= 300, "You do not have enough Degen Tokens");
            // tranfering 300 DGN to owners account
            bool success = transfer(ownerOfContract, 300);
            if(success == true){
                return "Now you have Potion of Fire Resistance";
            }
        }
        else if(num == 4){
            //cheking if the function caller has sufficient balance
            require(balanceOf(msg.sender) >= 400, "You do not have enough Degen Tokens");
            // tranfering 400 DGN to owners account
            bool success = transfer(ownerOfContract, 400);
            if(success == true){
                return "Now you have Potion of Invisibility";
            }
        }
        
        return "Invalid input";
    }

    function transfer(address recipient, uint amount) override public returns(bool){
        // //cheking if the function caller has required amount
        require(balanceOf(msg.sender) >= amount, "You do not have enough Degen Tokens");
        //Call the _transfer funtion present in ERC20
        _transfer(msg.sender, recipient, amount);
        //Emit the tranfer
        emit Transfer(msg.sender, recipient, amount);
        //function to this call was successful
        return true;
    }

    function decimals() override public pure returns (uint8) {
        // 1 DGN to equal to 1 DGN token only 
        return 0;
    }

}
