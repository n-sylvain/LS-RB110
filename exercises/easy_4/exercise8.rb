

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

def string_to_signed_integer(number)
  if number[0] == '-' || number[0] == '+'
    converted_number = string_to_integer(number[1, number.length - 1])
  else
    converted_number = string_to_integer(number)
  end

  converted_number = converted_number * -1 if number[0] == '-'
  converted_number
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100

# def string_to_signed_integer(string)
#   case string[0]
#   when '-' then -string_to_integer(string[1..-1])
#   when '+' then string_to_integer(string[1..-1])
#   else          string_to_integer(string)
#   end
# end
