# does not work

# TABLE_INTEGER = {
#   '0' => 0,
#   '1' => 1,
#   '2' => 2,
#   '3' => 3,
#   '4' => 4,
#   '5' => 5,
#   '6' => 6,
#   '7' => 7,
#   '8' => 8,
#   '9' => 9
# }

# def integer_to_string(number)
#   return '0' if number == 0

#   multiply = 1
#   str = []
#   temp_number = 0
#   loop do
#     if number % multiply != number
#       multiply *= 10
#     else
#       multiply /= 10
#       break
#     end
#   end

#   loop do
#     p temp_number = number / multiply
#     # p TABLE_INTEGER.values[temp_number]
#     # str << TABLE_INTEGER.values[temp_number]
#     str << temp_number
#     number = number - temp_number * multiply
#     multiply /= 10
#     p str
#     p multiply
#     p number
#     break if number == 0
#   end

#   str
# end


# # p integer_to_string(4321) == '4321'
# # p integer_to_string(0) == '0'
# p integer_to_string(5000) # == '5000'



DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end