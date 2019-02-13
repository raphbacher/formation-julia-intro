# The Julia ecosystem

## Online resources

The main Julia documentation is available [here](https://docs.julialang.org/)

A lot of resources are referenced on the [Julia website](https://julialang.org/learning/)

In particular you can get all the example notebooks (also available in JuliaBox) [here](https://github.com/JuliaComputing/JuliaBoxTutorials)


Note :

>Julia has been publicly available since 2012 and it has only reached its first stable release 1.0 in August 2018 (all 0.x versions came with breaking changes), so lot of resources over the web are still not accurate/pertinent for 1.0.


## Development Tools :

## JuliaPro/JuliaBox
JuliaPro is a distribution of curated packages for Julia (as Anaconda for Python, or Matlab with a set of toolboxes). It is provided freely (but requires a registration to download and install packages) by JuliaComputing.

JuliaBox is an online environment (based on Jupyter notebooks) with Julia (and some packages) preinstalled. You can also use it freely (or pay for more computational resources). It also provides a large number of example notebooks to learn Julia.


## The REPL

When you launch the Julia REPL, you are running a Julia process. While this process is not stopped you can profit from the incremental just-in-time compilation of your functions (that is your functions are compiled on the first run, which can thus be much slower than following calls). 

By default variables defined in the REPL outside of a function or loop/block are *global* which means that for example  (in Julia 1.1) you must do :

```julia
a=2
for i in 1:10
  # a = a + 3 # will result in error
  global a = a +3
end
```
Indeed to be able to write on a variable outside of the loop you need to acknowledge the fact that a is global, or put everything inside a function (which defines its own local scope).

## Editors

You can use any editor and the REPL but some tools (IDE) are developed in the community especially to ease data analysis and exploration.

### Jupyter
Julia works very well in Jupyter notebook (in fact the name Jupyter which replaces the original IPython notebook comes from JU(lia)-PYT(hon)-R once it was realized that most of it concept was language-agnostic).

### Juno
Juno is the "official" IDE of Julia.
It is in fact a customization of a generic code editor called Atom (which is developed by Github).

### VSCode
VSCode is very similar to Atom (but developed as an open-source product by Microsoft). It is not compatible to Julia 1.0 (see [https://github.com/JuliaEditorSupport/julia-vscode]())

<!--
## Install/Develop packages

TO BE BUILT...

### Speed-up reloads

Revise.jl

### Explore the code

Macros @code_llvm, @code_native, @code_warn

### Dependencies

#### importing
#### exporting functions

### The Julian way

Genericity

### Documenting

### Register your package
-->
