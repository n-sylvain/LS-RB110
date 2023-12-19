# require 'pry'

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

# def max_rotation(number)
#   count = number.to_s.size
#   max_number = 0
#   check_number = 0
#   begin_digits = []

#   0.upto(count - 1) do |index|
#     rotate_number = rotate_rightmost_digits(number.to_s[index..-1].to_i, count - index)
#     begin_digits << rotate_number.to_s[0]
#     check_number = (begin_digits.join + rotate_number.to_s).to_i unless index == 0

#     p rotate_number
#     p begin_digits.join.to_i
#     # p check_number
#     # binding.pry

#     # return max_number if check_number == max_number

#     # max_number = check_number

#     # p check_number
#     # p begin_digits
#     # p max_number
#   end
# end

# max_rotation(735291)

def max_rotation(number)
  number_digits = number.to_s.size
  number_digits.downto(2) do |n|
    number = rotate_rightmost_digits(number, n)
  end
  number
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
