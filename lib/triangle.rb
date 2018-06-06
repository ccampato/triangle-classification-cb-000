class Triangle
  attr_accessor :s1, :s2, :s3, :e

  def initialize(s1, s2, s3)
    @s2= s2
    @s1= s1
    @s3= s3
    @e= [s1,s2,s3]
  end

  def kind

    if e.any? { |side| side<= 0 or side.nil? } || ((s1+s2)<=s3) || ((s2+s3<=s1)) || ((s1+s3<=s2))
      raise TriangleError
    elsif (s1==s2) && (s2==s3)
      :equilateral
    elsif (s2==s3) || (s1==s3) || (s1==s2)
      :isosceles
    elsif (s1!=s2) && (s2!=s3) && (s1!=s3)
      :scalene
    end

  end

  class TriangleError < StandardError
    def message
      puts "triangles with no sizes are illigal."
    end
  end

end
