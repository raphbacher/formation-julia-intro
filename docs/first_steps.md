# Get Julia

## Try Julia online

You can try Julia online and for free at [http://juliabox.com](http://juliabox.com).
You will need to create a account (or log with your Github or Google account)
Once your are connected, you will be able to launch a jupyter server (the Launch button). You can then go .
You can if you want, follow an online presentation of these notebooks here : https://www.youtube.com/watch?v=fMa1qSg_LxA

## Install on your machine

You can download the Julia binaries from [http://julialang.org/downloads](http://julialang.org/downloads)
and follow instruction there.

If you want a all-in-one package (meaning coming with a list of curated Julia packages) you can use the JuliaPro distribution (similar to e.g. Anaconda for Python). The JuliaPro distribution is free but requires a registration for downloading and installing new packages.



## The REPL

Once Julia is installed, you can launch the Julia REPL ("Read Eval Print Line", similar to the R or python/ipython command line).

To launch the Julia REPL,

The REPL of Julia is a very powerful tool to interact with Julia. It provides several "modes"

- Shell mode : start with a ";" (e.g. `;ls` )
- Package mode : start with a "]" (e.g. `]add Plots` )
- Help mode : start with a "?" (e.g. `?cos` )

You can then write directly your command e.g.
```
4+3
```
and see the result immediatly.

## In a file

Write the following in a *toto.jl* file :

```julia
function addfunc(a,b)
    return a+b
end

print(addfunc(3,4))
```
From a terminal you can then execute this file by typing
```
julia toto.jl
```

Note that you can also execute this file in the REPL by typing `include(toto.jl)`

## Explore the language

The Julia community and Julia Computing provide
