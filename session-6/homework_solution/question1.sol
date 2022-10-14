pragma solidity ^0.8.4;

contract ReturnEth {
    function getValue() external payable returns (uint256) {
        assembly {
            let x := mload(0x40) //loading the address that free memory pointer is pointing at
            mstore(x, callvalue()) //the value is stored in memory because while returning it is returned from memory
            return(x, 32)
        }
    }
}
