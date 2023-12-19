=begin
A palindrome is a word, phrase, number, or other sequence of characters
which reads the same backward as forward. Examples of numerical palindromes
are:

2332
110011
54322345

You'll be given 2 numbers as arguments: (num, s). Write a function which
returns an array of s number of numerical palindromes that come after num.
If num is a palindrome itself, it should be included in the count.

Return "Not valid" instead if any one of the inputs is not a number or
is less than 0.

Single digit numbers will NOT be considered numerical palindromes.

palindrome(6,4) == [11,22,33,44]
palindrome(59,3) == [66,77,88]
palindrome(101,2) == [101,111]
palindrome("15651",5) == "Not valid"
palindrome(1221,"8") == "Not valid"

P:
input: 2 arguments, 1 integer number, 1 integer s number of numerical
palindromes
output: array of palindrome numbers or string "not valid" if input is not
satisfied

D: array

A:
define a method called palindrome that takes 2 parameters, num and s
initialize an empty array that will contain the palindrome numbers
go over all the numbers above num and until the number of palindrome numbers is equal to s

define a method palindromic that take num and s (both integers)
check if num and s are valid integers
initialize an empty array result
while s positive
  check num is palindrome, if yes, add it to result array and decrement s
return result

helper method palindrome
use reverse
=end

def is_integer?(num)
  num.to_s.to_i == num
end

def is_palindrome?(num)
  num.to_s.reverse.to_i == num
end

def palindrome(num, s)
  return "Not valid" unless is_integer?(num) && is_integer?(s)
  result = []
  num = 10 if num < 10
  while s > 0 do
    if is_palindrome?(num)
      result << num
      s -= 1
    end
    num += 1
  end
  p result
  result
end

palindrome(6,4) == [11,22,33,44]
palindrome(59,3) == [66,77,88]
palindrome(101,2) == [101,111]
palindrome("15651",5) == "Not valid"
palindrome(1221,"8") == "Not valid"
