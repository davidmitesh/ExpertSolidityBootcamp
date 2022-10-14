### Explain what the following code is doing in the YUL ERC20 contract?

function allowanceStorageOffset(account, spender) -> offset {
offset := accountToStorageOffset(account)
mstore(0, offset) mstore(0x20, spender)
offset := keccak256(0, 0x40)
}

### Answer

As allowance is stored as a double mapping( like this one in ERC20 version of solidity : mapping(address => mapping(address => uint256)) private \_allowances),
so to write that logic in assembly using yul, account and spender address should be taken and a unique offset need to be determined on the storage where the amount will be stored.

So, for that, let us first try to understand what `accountToStorageOffset(account)` is doing?

The code for that function is as follows:

function accountToStorageOffset(account) -> offset {
offset := add(0x1000, account)
}
It will basically take the account and add `0x1000` to it and give the offset.

Now, that offset will be stored in the memory location 0 with the code `mstore(0,offset)`. Also, the spender address will be stored in the next 32 byte slot using `mstore(0x20,spender)`. Then the final offset will be calculated by the keccak256 hash of the offset from the account and the spender address and the function returns that.

This is the way the solidity stores the mappings in the storage.

```

```
