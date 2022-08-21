class Triangle
  # write code here
  attr_accessor :side_a, :side_b, :side_c

  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def kind
    if @side_a <= 0 || @side_b <= 0 || @side_c <= 0
      raise TriangleError
    end

    if @side_a + @side_b <= @side_c || @side_b + @side_c <= @side_a|| @side_a + @side_c <= @side_b
      raise TriangleError
    end

    return :equilateral if @side_a == @side_b && @side_b == @side_c
    return :isosceles if @side_a == @side_b || @side_a == @side_c || @side_b == @side_c
    return :scalene if  @side_a != @side_b && @side_b != @side_c

  end

  class TriangleError < StandardError
    # triangle error code
  end

end
