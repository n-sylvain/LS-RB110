=begin
P:
input: integer
output: integer
rules:
Explicit:
  - a feature number:
    - odd
    - multiple of 7
    - digits occur exactely once each
Implicit:
  - maximum limit is 9_876_543_210
  - no float
  - input integer is not checked

E:
featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987

featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

DA:
write a featured method that takes an integer as a parameter
initiate a counter and assign it the value of the integer
initiate a while loop that ultimately return the error message if the parameter is greater than 9_876_543_210
  for each counter check:
    if odd
    if multiple of 7
    if digits occur exactely once => helper method
    increment counter if not

uniq digits method that take an integer as a parameter
  the parameter is to_s and sorted
  return true if single digit
  we iterate, we compare the n ele with the n+1 element
    if any is equal return false
    if not, return true
=end

def uniq_digits(number)
  number = number.to_s.chars.sort
  return true if number.size == 1
  0.upto(number.size - 2) do |index|
    return false if number[index] == number[index + 1]
  end
  true
end

def featured(number)
  loop do
    number += 1
    return "-> There is no possible number that fulfills those requirements" if number > 9_876_543_210
    return number if number.odd? && number % 7 == 0 && uniq_digits(number)
  end
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999)
