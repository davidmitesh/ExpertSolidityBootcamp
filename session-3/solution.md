### What are the advantages and disadvantages of the 256 bit word length in the EVM?

The advantage of the 256 bit word is that it allows hash functions to be handled more
easily. The disavdantage is that in normal code we don't usually need that number of
bits, so we are wasting resources

### what would happen if the implementation of precompiled contract varied between Ethereum Clients?

That would break the consensus.
