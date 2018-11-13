## Why is it fast ?

- Multiple dispatch + JIT

### Multiple dispatch

A function "add(a,b)" is specified in methods depending on the types of "a" and "b".
*add(2,3)* will call (if it exists) *add(Int,Int)* whereas *add(2.0,3.0)* will call *add(Float,Float)*

### JIT
Each of these methods is compiled the first time it is called (Just-in-time). The next time it's called



## What does it implies (to write fast Julia) ?

You need to put your code in functions (so it gets compiled).
Your functions need to be type-stable (so the compiler can compile specialized version )

You can write loops or vectors as it fits you !

But you don't need (most of the time) to indicate your types, the type inferrer is getting better and better.
