# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  # WRITE THIS CODE
  # if (a == 0) or (b == 0) or (c == 0)
  #   raise TriangleError, "No side of a triangle can be 0"
  # end

  raise TriangleError, "All sides must be greater than 0" if (a <= 0) || (b <= 0) || (c <= 0)
  raise TriangleError, "Any 2 sides should add up to more than the third side" if ((a + b) <= c) || ((a + c) <= b) || ((b + c) <= a)

  if (a == b) and (b == c)
    :equilateral
  elsif (a == b) or (a == c) or (b == c)
    :isosceles
  else
    :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
