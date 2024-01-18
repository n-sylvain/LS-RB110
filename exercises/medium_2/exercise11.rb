=begin
A prime number is a positive number that is evenly divisible only by itself and 1. Thus, 23 is prime since its only divisors are 1 and 23. However, 24 is not prime since it has divisors of 1, 2, 3, 4, 6, 8, 12, and 24. Note that the number 1 is not prime.

Write a method that takes a positive integer as an argument and returns true if the number is prime, false if it is not prime.

You may not use Ruby's Prime class to solve this problem. Your task is to programmatically determine whether a number is prime without relying on any methods that already do that for you.
=end

# Input: Integer
# Output: Boolean
# Rules:
#   Explicit:
#     - do not use any built-in method to determine if a number is prime
#     - A prime is a positive number that is evenly divisible by 1 and itself
#     - number is positive
#     - 1 is not a prime
#   Implicit:

# Test:
# 2 => 1, 2
# 3 => 1, 3
# 4 => 1, 2, 4
# 5 => 1, 5
# 6 => 1, 3, 6
# 7 => 1, 7

# Algorithm
#   calculate all the divisors for a given number
#     iterating through each number from 1 to a given number
#       use modulo % and append to a result array if number % index == 0
#   result array size == 2


def is_prime(n)
  result = []
  1.upto(n) do |index|
    result << index if n % index == 0
  end
  # p result
  result.size == 2
end



puts(is_prime(1) == false)              # true
puts(is_prime(2) == true)               # true
puts(is_prime(3) == true)               # true
puts(is_prime(4) == false)              # true
puts(is_prime(5) == true)               # true
puts(is_prime(6) == false)              # true
puts(is_prime(7) == true)               # true
puts(is_prime(8) == false)              # true
puts(is_prime(9) == false)              # true
puts(is_prime(10) == false)             # true
puts(is_prime(23) == true)              # true
puts(is_prime(24) == false)             # true
puts(is_prime(997) == true)             # true
puts(is_prime(998) == false)            # true
puts(is_prime(3_297_061) == true)       # true
puts(is_prime(23_297_061) == false)     # true
