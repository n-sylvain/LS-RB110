require 'pry'

TABLE_INTEGER = {
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9
}

def string_to_integer(number)
  converted_number = 0
  counter = number.size - 1
  multiply = 1

  loop do
    current_char = number[counter]
    # puts current_char
    converted_number = converted_number + TABLE_INTEGER[current_char] * multiply
    # binding.pry
    multiply *= 10
    counter -= 1
    # puts counter
    break if counter < 0
  end

  converted_number
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570


# PEDAC
# P: convert to integer the old fashion way
# E: '4321' => 4321
# D: hashes
# A: loop through the string and check the corresponding value in a constant hash

# DIGITS = {
#   '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
#   '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
# }

# def string_to_integer(string)
#   digits = string.chars.map { |char| DIGITS[char] }

#   value = 0
#   digits.each { |digit| value = 10 * value + digit }
#   value
# end
