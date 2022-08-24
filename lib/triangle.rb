class Triangle
  # write code here
  attr_accessor
  def initialize (first, second, third)
    @first=first
    @second=second
    @third=third
  end
  def kind 
    #error for negative sides
    if @first <= 0 || @second <= 0 || @third <= 0
      raise TriangleError
    end
    
    if @first +@second <= @third || @first + @third <= @second || @second + @third <= @first
      raise TriangleError
    end
    return :equilateral if @first == @second && @second == @third
    return :isosceles if @first == @second || @second == @third || @first == @third
    return :scalene if @first != @second && @second != @third && @second != @third
    
  end
  class TriangleError < StandardError
  end
end