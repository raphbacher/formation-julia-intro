# Get Julia

## Try Julia online

You can try Julia online and for free at [http://juliabox.com](http://juliabox.com).
You will need to create a account (or log with your Github or Google account)
Once your are connected, you will be able to launch a jupyter server (the Launch button). You can then go inside the tutorials directory to play with the given notebooks.
You can if you want, follow an online presentation of these notebooks here : [https://www.youtube.com/watch?v=fMa1qSg_LxA]()

## Install on your machine

You can download the Julia binaries from [http://julialang.org/downloads](http://julialang.org/downloads)
and follow instruction [here](https://julialang.org/downloads/platform.html#generic-binaries).

If you want a all-in-one package (meaning coming with a list of curated Julia packages) you can use the JuliaPro distribution (similar to e.g. Anaconda for Python). The JuliaPro distribution is free but requires a registration for downloading and installing new packages (note that as of February 2019 I personally recommend using directly the Julia installer as the JuliaPro list of packages is still limited right now and thus requires some manipulations to access the whole ecosystem)

## The REPL

Once Julia is installed, you can launch the Julia REPL ("Read Eval Print Line", similar to the R or Python/IPython command line).

To launch the Julia REPL, just type `julia` in a terminal in Linux/Mac if you have indeed put `julia` in your path (see [here](https://julialang.org/downloads/platform.html#generic-binaries))

The REPL of Julia is a very powerful tool to interact with Julia. It provides several "modes"

- Shell mode : start with a ";" (e.g. `;ls` )
- Package mode : start with a "]" (e.g. `]add Plots` )
- Help mode : start with a "?" (e.g. `?cos` )

You can then write directly your command e.g.
```
4+3
```
and see the result immediately.

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

Note that you can also execute this file in the REPL by typing `include(toto.jl)`. This command basically copies the content of toto.jl in the REPL.
**In fact it is more efficient to execute the file with include inside a living REPL than execute a script from a classic shell with the julia command because of the JIT overhead of launching julia**

## Explore the language

The Julia community and Julia Computing provide a extensive [list of introductory notebooks](https://github.com/JuliaComputing/JuliaBoxTutorials) (a subset of which are exploited in the [tutorials section](tutorials))
