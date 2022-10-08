### What information is held for an Ethereum Account?

- nonce
- balance
- storageRoot
- codeHash

### Where is the full Ethereum state held?

The node client will decide themselves how to represent the state, for example in a levelDB database. State can be recreated from transactions.

### What is replay attack and what two information pieces in solidity helps to prevent it?

If a signed transaction which is already executed is tried to run again, is known as replay attack.

- ChainId
- Account Nonce

### How do we know who called the view function?

When using msg.sender for view functions, the messages is not signed and so the value of msg.sender is not verified.
