## History
Julia is a programming language created in 2009 by a few computer science academics.
It has its first public version in 2012.
Version 1.0 in 2018

Manifesto of the first public release in 2012

> We want a language that’s open source, with a liberal license. We want the speed of C with the dynamism of Ruby. We want a language that’s homoiconic, with true macros like Lisp, but with obvious, familiar mathematical notation like Matlab. We want something as usable for general programming as Python, as easy for statistics as R, as natural for string processing as Perl, as powerful for linear algebra as Matlab, as good at gluing programs together as the shell. Something that is dirt simple to learn, yet keeps the most serious hackers happy. We want it interactive and we want it compiled.


- Fast: Julia was designed from the beginning for high performance. Julia programs compile to efficient native code for multiple platforms via LLVM.
- General: It uses multiple dispatch as a paradigm, making it easy to express many object-oriented and functional programming patterns. The standard library provides asynchronous I/O, process control, logging, profiling, a package manager, and more.
- Dynamic: Julia is dynamically-typed, feels like a scripting language, and has good support for interactive use.
- Technical: It excels at numerical computing with a syntax that is great for math, many supported numeric data types, and parallelism out of the box. Julia’s multiple dispatch is a natural fit for defining number and array-like data types.
- Optionally typed: Julia has a rich language of descriptive data types, and type declarations can be used to clarify and solidify programs.
- Composable: Julia’s packages naturally work well together. Matrices of unit quantities, or data table columns of currencies and colors, just work — and with good performance.


## For whom ?
- Developing algorithms
- Need for speed and/or genericity
- Mathematical models

Less useful if

- you are mainly using existing libraries/algorithms (for data analysis e.g.)




# Examples

## It's fast

```julia
X = rand()
A = rand()
Y = A * B
```


## It's generic
