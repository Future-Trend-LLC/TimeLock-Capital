pragma solidity ^0.5.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/TokenTimelock.sol";

contract BIATimeLock {
//using SafeERC20 for IERC20;
using SafeMath for uint256;
IERC20 public BIAToken; 
    
// Token reserve funds
address public walletAdress;
   
constructor(
        IERC20 _tokenAddress,
        address _walletAdress
        ) 
        public {
        walletAdress = _walletAdress;
        BIAToken = _tokenAddress;   
        tokenTimeLock();
    }   

  //Unix epoc time for 1 January 2024 00:00:00
  uint256 public releaseTime = 1704067200;

  // Timelock Addresses
  address public timeLock;
  
  event newTimeLock(address _timeLock,address _wallet,uint256 _releaseTime);

function tokenTimeLock() internal {
      
      timeLock  = address(new TokenTimelock(BIAToken, walletAdress, releaseTime));
      emit newTimeLock(timeLock,walletAdress, releaseTime);
        
    }
}


