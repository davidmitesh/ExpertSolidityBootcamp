### Understand what the following snippet of bytecode is doing?

`
push9 0x601e8060093d393df3
msize
mstore # mem = 000...000 601e8060093d393df3 # = 000...000 spawned constructor payload

#### copy the runtime bytecode after the constructor code in mem

codesize # cs
returndatasize # 0 cs
msize # 0x20 0 cs
codecopy # mem = 000...000 601e8060093d393df3 RUNTIME_BYTECODE

                            # --- stack ---

push1 9 # 9
codesize # cs 9
add # cs+9 = CS = total codesize in memory

push1 23 # 23 CS
returndatasize # 0 23 CS
dup3 # CS 0 23 CS

dup3 # 23 CS 0 23 CS
callvalue # v 23 CS 0 23 CS
create # addr1 0 23 CS
pop # 0 23 CS

create # addr2

selfdestruct

`

The above bytecode is
