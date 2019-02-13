# Interoperability with other languages

## Python

You can use Python packages from Julia with this Julia package : [Pycall](https://github.com/JuliaPy/PyCall.jl)

Example :

```julia
julia> using PyCall
julia> @pyimport math
julia> math.sin(math.pi / 4) - sin(pi / 4)  # compares python math sin function with Julia's (hopefully returns 0.0)
```

You can also Julia from Python with this package : [https://github.com/JuliaPy/pyjulia]()

The Julia docs provide also a [list of noteworthy differences](https://docs.julialang.org/en/latest/manual/noteworthy-differences/#Noteworthy-differences-from-Python-1) that have to be taken care of when coming from Python.

# R
You can use R packages from Julia with this Julia package : [RCall](https://github.com/JuliaInterop/RCall.jl)

Example :

```julia
julia> using RCall
julia> foo = 1
1

R> x <- $foo # by just pressing `$` we switch to R console !

R> x
[1] 1

```

The Julia docs provide also a [list of noteworthy differences](https://docs.julialang.org/en/latest/manual/noteworthy-differences/#Noteworthy-differences-from-R-1) that have to be taken care of when coming from Python.

## But also Matlab, C, C++, Java
- Matlab : [https://github.com/JuliaInterop/MATLAB.jl]() and [https://docs.julialang.org/en/latest/manual/noteworthy-differences/#Noteworthy-differences-from-MATLAB-1]()
- C with no overhead using FFI  
- ...
