require 'pry'
class Triangle
 
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    # binding.pry
    if @a+@b <= @c || @b+@c <= @a || @a+@c <= @b || [@a,@b,@c].find{|i| i==0 || i <0} 
        begin
          raise TriangleError
        end
    elsif @a==@b && @b==@c
      :equilateral
    elsif @a==@b || @b==@c || @a==@c
      :isosceles
    elsif [@a,@b,@c].max < [@a+@b, @a+@c, @b+@c].max && @a!=@b && @b!=@c
      :scalene
    end
  end


  
  
  class TriangleError < StandardError
    def message
      "this is not a triangle"
    end
  end
end
