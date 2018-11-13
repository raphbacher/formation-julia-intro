# Why Julia is fast ?

The speed of Julia comes from the combination of several coding paradigms.

First Julia use the LLVM compiler to do Just-In-Time (JIT) compilation.
The idea of using JIT technics to improve the speed of a dynamic language is not proper to Julia.
Lots of money has for example been thrown at JIT compilers for Javascript and the numba library applies it with quite some success to Python.

But Julia combines this JIT approach with another concept : multiple dispatch.

Multiple dispatch consists in specifying a function over the types of all its arguments.

A function "add(a,b)" is specified in methods depending on the types of "a" and "b".
*add(2,3)* will call (if it exists) *add(Int,Int)* whereas *add(2.0,3.0)* will call *add(Float,Float)*

So the first time ("Just-in-time") a function is called with some arguments, the Julia processor will determine what are the types of the arguments, what is the type of the output and create a static, typed, compiled version of this function. The next time it's called, the code executed is directly the compiled method specified for these particular arguments. That is, instead of keeping ambiguities on the types all along the code execution, as it would happen in a dynamic language like Python (which is the main reason for the slowness of these languages), .

And in the meantime, the design of Julia allows to get to these specified static typed compiled functions far more easier that in classical low-level languages as C, as you do not have to take care yourself of how the compilation happens when you compose/combine Julia codes (because of the use of JIT technics).

# Why Julia is slow

What does the above implies to write fast Julia ?

- When launching the Julia process (i.e. opening the REPL, or a Jupyter notebook), the initialization can be a bit slow. That's why Julia is not well suited for short scripts runed repeatedly outside of a existing Julia process (e.g. for system administration where Perl/Python will be better suited).
- The first time you execute a code/launch a package, it get's compiled and that can be slow.
- You need to put your code in functions (so it gets compiled once and can be reused).
- Your functions need to be type-stable that is (so the compiler can specialize the compiled version)
- You need to avoid global variables (as by definition they can be changed anywhere/anytime so the compiler can not make any assumptions) or used constant ones (*const*).
- You don't need (most of the time) to indicate your types, the type inferrer is getting better and better.

You can write loops or vectors (as it fits you/your problem) as speed does not come from some predefined fast vectorized constructs.

# How to benchmark/optimize your code
Type stability

## BenchmarkTools
```julia
# install BenchmarkTools
using Pkg
Pkg.add("BenchmarkTools")

# Load it
using BenchmarkTools

f(x)=2x
@btime f(4)
```
There are a
Allocations
