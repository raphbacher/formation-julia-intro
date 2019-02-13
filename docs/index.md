# Introduction to Julia

The goal of this website is to provide an overview and an Introduction to the scientific programming language Julia.
It relies extensively on resources provided by the Julia community and in particular the [Julia website](https://juliang.org), the [Julia docs](https://docs.julialang.org/) and material from the [JuliaBox tutorials](https://github.com/JuliaComputing/JuliaBoxTutorials).

This website does not seek to be provide an exhaustive view of the language (see notably the [julia docs](https://docs.julialang.org) for a very thorough review), but it can hopefully contribute to ease the access to Julia for some beginners.

## What is Julia
Julia is a programming language created in 2009 by a few computer scientists notably at MIT.
It has its first public version in 2012 and hit its first stable version 1.0 in August 2018.

Below is exposed the Manifesto of the first public release in 2012 :

> We want a language that’s open source, with a liberal license. We want the speed of C with the dynamism of Ruby. We want a language that’s homoiconic, with true macros like Lisp, but with obvious, familiar mathematical notation like Matlab. We want something as usable for general programming as Python, as easy for statistics as R, as natural for string processing as Perl, as powerful for linear algebra as Matlab, as good at gluing programs together as the shell. Something that is dirt simple to learn, yet keeps the most serious hackers happy. We want it interactive and we want it compiled.


## For what and whom ?

The creation of Julia was motivated by the observation of a so-called "Two languages problem" in scientific computing.
This problem is driven by the fact that researchers need high level syntax and dynamism to explore complex and novel ideas, which can be provided by languages such as Python, R, Matlab, but may often need at some point to translate to some fast low-level language (usually Fortran/C).

Julia was thus designed to those in scientific computing/data science (but also in other applications as it has grown into a general purpose language such as Python) that need to develop new efficient algorithms.

As it is a new language with a growing but still smaller ecosystem than e.g. Python or R, it is maybe less attractive for now for scientists that are only code/libraries users (even if in some domains the Julia ecosystem is already state of art such as Differential Equations, Optimization,...  and there exists possibility to connect easily to other language ecosystems, see [this page](interop.md) )

## What does it look like

```julia
using LinearAlgebra #load a library

A = rand(10,10) # create a random matrix A of size 10 by 10
Y = rand(10) # create a random vector Y of size 10

X = A\Y # resolve Y=AX

```

```julia
function add(a,b) # define a function `add`
  return a+b
end

add(3,4) # apply the function `add` to 3 and 4
```

## A tool for doing better science

### High level and efficient
By tackling the two language problems, Julia can allow better interaction between researchers and research engineers (see e.g. this very interesting [video](https://www.youtube.com/watch?v=8ZSaAM8hhJ4) about the rise of the Reasearch Software Engineer) by becoming a lingua franca between software engineers and researchers.

### Build for collaboration
Julia is a language that really encourages collaboration and factorization of code, by virtue of its design.

- A Julia Package is almost always synonym of a git/Github repo
- Multiple dispatch calls for generic programming.
- And allows very good composition of packages, where the total is more than the sum of the parts (see e.g. [Measurements.jl](https://github.com/JuliaPhysics/Measurements.jl) to get precision for all your packages, [ForwardDiff.jl](https://github.com/JuliaDiff/ForwardDiff.jl) to Automatic Derivation,...)

Also, the youth of the language implies that the ecosystem is not (yet) fragmented, and it is easier to impact the ecosystem parts that concerns you (a large part of Julia contributors are non computer sciences PhD/postdocs...).
