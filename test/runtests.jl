  using Test
  using LAFF

  @testset "laff_copy!" begin
      @test [1,0,0] ≈ LAFF.laff_copy!([1,0,0],[0,1,0])
      @test [0,1,0] ≉ LAFF.laff_copy!([1,0,0],[0,1,0])
      @test_throws ErrorException LAFF.laff_copy!([1],[1,1])
      @test_throws MethodError LAFF.laff_copy!(1, 1)
  end

  @testset "laff_scal" begin
      @test [pi,pi,pi] ≈ LAFF.laff_scal(pi,[1.0,1.0,1.0])
      @test_throws MethodError LAFF.laff_scal(1, 1)
  end

  @testset "laff_axpy!" begin
      @test [pi,1,0] ≈ LAFF.laff_axpy!(pi,[1.0,0,0],[0,1.0,0])
      @test [0,1.0,0] ≉ LAFF.laff_axpy!(pi,[1.0,0,0],[0,1.0,0])
      @test_throws ErrorException LAFF.laff_axpy!(1, [1],[1,1])
      @test_throws MethodError LAFF.laff_axpy!(1, 1, 1)
  end