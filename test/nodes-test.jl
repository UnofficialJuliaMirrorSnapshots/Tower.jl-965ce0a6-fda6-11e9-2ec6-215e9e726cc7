module LinkedListTest

using Test
using Tower.Nodes

@testset "Create single Nodes with the correct values" begin

    node1 = Node{Int64}(1)
    @test value(node1) == 1
    @test next(node1) == nothing

    node2 = Node{Int128}(Int128(10))
    @test value(node2) == Int128(10)
    @test next(node2) == nothing

    node3 = Node{Vector{Int64}}([1, 2, 3])
    @test value(node3) == [1, 2, 3]
    @test next(node3) == nothing

    node4 = Node{Tuple{Int64,Int64}}((11, 12))
    @test value(node4) == (11, 12)
    @test next(node4) == nothing
end

@testset "Create nodes with the next node and the correct value" begin
    node3 = Node{Int64}(30)
    @test value(node3) == 30
    @test next(node3) == nothing

    node2 = Node{Int64}(20, node3)
    @test value(node2) == 20
    @test next(node2) == node3

    node1 = Node{Int64}(10, node2)
    @test value(node1) == 10
    @test next(node1) == node2

    println(node1)
end

@testset "function value returns the correct value" begin
    node1 = Node{Float64}(12.3)
    @test value(node1) == 12.3

    node2 = Node{Int128}(Int128(123))
    @test value(node2) == Int128(123)
end

end
