# Install Julia

## Test Julia online

You can try Julia online and for free at [http://juliabox.com](http://juliabox.com).
You will need to create a account (or log with your Github or Google account)
Once your are connected

## Install on your machine

You can download the Julia binaries from [http://julialang.org/downloads](http://julialang.org/downloads)

If you want a all-in-one package you can use the JuliaPro distribution (similar to e.g. Anaconda for Python). The JuliaPro distribution is free but requires a registration for downloading and installing new packages.


## The REPL

Once Julia is installed, you can launch the Julia REPL ("Read Eval Print Line", like the R or python/ipython command line)

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
