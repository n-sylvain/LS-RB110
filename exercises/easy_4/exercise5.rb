
def multiple_arr(multiple, number)
  arr = []
  for i in 1..number
    arr << i if i % multiple == 0
  end
  arr
end

def multisum(number)
  sum = 0
  arr3 = multiple_arr(3, number)
  arr4 = multiple_arr(5, number)
  number_arr = [arr3, arr4].flatten.uniq.sort
  number_arr.each{ |num| sum += num }
  sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168

# PEDAC
# P: write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number,
# and then computes the sum of those mutiples.
# Integers
# include the integer itself
#
# E: 20 => 98 = 3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20
#
# D: arrays
#
# A:
# method that returns an array of multiples
# merge arrays and remove duplicates
# sum of each element using each


# def multiple?(number, divisor)
#   number % divisor == 0
# end

# def multisum(max_value)
#   sum = 0
#   1.upto(max_value) do |number|
#     if multiple?(number, 3) || multiple?(number, 5)
#       sum += number
#     end
#   end
#   sum
# end
