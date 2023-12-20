=begin
P:
Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol
:equilateral, :isosceles, :scalene, or :invalid depending on whether the triangle is equilateral, isosceles,
scalene, or invalid.

equilateral All 3 sides are of equal length
isosceles 2 sides are of equal length, while the 3rd is different
scalene All 3 sides are of different length

To be a valid triangle, the sum of the lengths of the two shortest sides must be greater than the length of the
longest side, and all sides must have lengths greater than 0: if either of these conditions is not satisfied, the
triangle is invalid.

input: 3 integers
output: a symbol among :equilateral, :sosceles, :scalene and :invalid
rules:
Explicit Requirements
  - the sum of the lengths of the two shortest sides must be greater than the length of the longest side
  - all lengths must be greater than 0
Implicit Requirements:
  - integers are positive

E:
triangle(3, 3, 3) == :equilateral [3, 3, 3]
triangle(3, 3, 1.5) == :isosceles [1.5, 3, 3]
triangle(3, 4, 5) == :scalene []
triangle(0, 3, 3) == :invalid
triangle(3, 1, 1) == :invalid

DA:
define a method triangle that takes 3 parameters
we save the 3 parameters in an array and sort it by smaller to greater
check if valid triangle or not
  if valid then
    for first case :equilateral: => we check if each element are equals
    for second case :isosceles: => we check if last and last-1 element are equals and its sum is greater than the first
      element
    for :invalid => check if any element is <= 0
    for :scalene => check if
=end

# def triangle(a, b, c)
#   sides = [a, b, c].sort
#   sides.each { |side| return :invalid if side <= 0 }
#   if (sides[0] == sides[1]) && (sides[1] == sides[2])
#     return :equilateral
#   elsif (sides[0] + sides[1] >= sides[2]) && (sides[1] == sides[2])
#     return :isosceles
#   elsif sides[0] + sides[1] >= sides[2]
#     return :scalene
#   else
#     return :invalid
#   end
# end

def triangle(side1, side2, side3)
  sides = [side1, side2, side3]
  largest_side = sides.max

  case
  when 2 * largest_side >= sides.reduce(:+), sides.include?(0)
    :invalid
  when side1 == side2 && side2 == side3
    :equilateral
  when side1 == side2 || side1 == side3 || side2 == side3
    :isosceles
  else
    :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
