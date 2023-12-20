=begin
P:
A triangle is classified as follows:
right   One angle of the triangle is a right angle (90 degrees)
acute   All 3 angles of the triangle are less than 90 degrees
obtuse  One angle is greater than 90 degrees.

To be a valid triangle, the sum of the angles must be exactly 180 degrees, and all angles must be greater than 0:
if either of these conditions is not satisfied, the triangle is invalid.

input: 3 integers
output: a symbol amon :acute, :right: obtuse and :invalid
rules:
Explicit: just integer, no float and specified in degrees
implicit:

DA:
define an array and save all angles
case statement
  invalid: if the sum of angles are not equal to 180
  right: if any of the angle is 90 degrees
  acute: if all angles below 90 degrees
  obtuse: if one angle over 90 degrees
=end

def triangle(a, b, c)
  angles = [a, b, c]
  case
  when angles.reduce(:+) != 180, angles.any?(&:zero?) # or angles.include?(0)
    return :invalid
  when angles.any? { |angle| angle == 90 }
    return :right
  when angles.all? { |angle| angle < 90 }
    return :acute
  when angles.any? { |angle| angle > 90 }
    return :obtuse
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
