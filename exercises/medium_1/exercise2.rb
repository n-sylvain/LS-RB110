def rotate_array(array)
  array[1..-1] + array[0]
end

def rotate_rightmost_digits(number, digits)
  left = number.to_s[0, number.to_s.size - digits]
  right = number.to_s[number.to_s.size - digits, digits]
  (left + rotate_array(right)).to_i
end

# or
# def rotate_rightmost_digits(number, n)
#   all_digits = number.to_s.chars
#   all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
#   all_digits.join.to_i
# end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
