def sum_square_difference(number)
  1.upto(number).reduce(:+)**2 - (1..number).to_a.map { |idx| idx**2 }.sum
end

p sum_square_difference(3) == 22
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
