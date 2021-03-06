isdefined(Base, :__precompile__) && __precompile__()

module Calculus
    import Compat
    import Base.ctranspose
    export check_derivative,
           check_gradient,
           check_hessian,
           check_second_derivative,
           deparse,
           derivative,
           differentiate,
           hessian,
           jacobian,
           second_derivative

    # TODO: Debate type system more carefully
    # abstract BundledFunction
    # abstract ScalarFunction
    # abstract VectorFunction
    # abstract ForwardDifference
    # abstract CentralDifference
    # abstract ComplexDifference
    # abstract GradientEstimator
    # abstract HessianEstimator

    # typealias NonDifferentiableFunction Function
    # type DifferentiableFunction
    #   f::Function
    #   g::Function
    # end
    # type TwiceDifferentiableFunction
    #   f::Function
    #   g::Function
    #   h::Function
    # end
    # type NonDifferentiableBundledFunction <: BundledFunction
    #   f::Function
    #   fstorage::Any
    # end
    # type DifferentiableBundledFunction <: BundledFunction
    #   f::Function
    #   g::Function
    #   fstorage::Any
    #   gstorage::Any
    # end
    # type TwiceDifferentiableBundledFunction <: BundledFunction
    #   f::Function
    #   g::Function
    #   h::Function
    #   fstorage::Any
    #   gstorage::Any
    #   hstorage::Any
    # end

    include("finite_difference.jl")
    include("derivative.jl")
    include("check_derivative.jl")
    @Base.deprecate integrate(f,a,b) quadgk(f,a,b)[1]
    @Base.deprecate integrate(f,a,b,method) quadgk(f,a,b)[1]
    include("symbolic.jl")
    include("differentiate.jl")
    include("deparse.jl")
end
