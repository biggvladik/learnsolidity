// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";



contract Exchange {
    address public tokenAddress;


    constructor(address _token) {
        require(_token!= address(0), "Incorrect token address");
        tokenAddress = _token;
    }


    function addLiquidity(uint256 _tokenAmount) public payable {

        IERC20 token  = IERC20(tokenAddress);
        token.transferFrom(msg.sender,address(this), _tokenAmount);

    }



    function getReverse() public view returns (uint256) {

        return IERC20(tokenAddress).balanceOf(address(this));

    }


}