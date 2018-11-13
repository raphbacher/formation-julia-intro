# Tools

## Editors

You can use any editor and the REPL but some tools (IDE) are developped in the community especially to ease data analysis and exploration.

- Julia in VScode
- Juno (Atom)
- Jupyter(lab)

## The REPL
When you launch the Julia REPL, you are running a Julia process. While this process is not stopped

By default variables defined in the REPL outside of a function or loop/block are *global* which means that for example  (in Julia 1.0.1) you must do that

```julia
a=2
for i in 1:10
  # a = a + 3 # will result in error
  global a = a +3
end
```
Indeed to be able to write on a variable outside of the loop you need to acknowledge the fact that a is global , or put everything inside a function (which defines its own local scope).

## Juno
Juno is the "official" IDE of Julia.
It is in fact a customization of a generic code editor called Atom (which is developped by Github)

## Speed-up reloads

Revise.jl

## Explore the code

Macros @code_llvm, @code_native, @code_warn
