using DescriptorZoo
using Test, LinearAlgebra, BenchmarkTools
using JuLIP, JuLIP.Testing

@testset "DescriptorZoo.jl" begin
    include("exports.jl")
    include("test_acsf.jl")
    include("test_amp.jl")
    include("test_chsf.jl")
    include("test_mbtr.jl")
    include("test_soaplite.jl")
    include("test_dscribe_soap.jl")
    include("test_dscribe_acsf.jl")
end

