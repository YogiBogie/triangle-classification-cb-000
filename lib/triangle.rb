class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    illegal = false

    if @side1 + @side2 <= @side3 || @side1 + @side3 <= @side2 || @side3 + @side2 <= @side1
      illegal = true
    end

    if @side1 <= 0 || @side2 <= 0 || @side3 <= 0 || illegal
      raise TriangleError
    elsif @side1 == @side2 && @side2 == @side3
      return :equilateral
    elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
      return :isosceles
    elsif @side1 != @side2 && @side1 != @side3 && @side2 != @side3
      return :scalene
    end

  end


end

class TriangleError < StandardError

end
