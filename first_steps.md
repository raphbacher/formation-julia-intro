# Install Julia

From http://julialang.org

## Test Julia online
juliabox

## The REPL

REPL : Read Eval Print Line (like the R or python/ipython command line)

The REPL of Julia is very powerful.

- Shell mode : start with a ";" (e.g. `;ls` )
- Package mode : start with a "]" (e.g. `]add Plots` )
- Help mode : start with a "?" (e.g. `?cos` )

## In a file

In toto.jl :

```julia
function addfunc(a,b)
    return a+b
end

addfunc(3,4)
```

Then in the REPL
`include(toto.jl)`