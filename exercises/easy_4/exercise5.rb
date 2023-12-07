
def multiple_arr(multiple, value)
  arr = []
  for i in 1..value
    arr << i if i % multiple == 0
  end
  arr
end

def multisum()

end

p multiple_arr(3, 20)
p multiple_arr(5, 20)

# p multisum(3) == 3
# p multisum(5) == 8
# p multisum(10) == 33
# p multisum(1000) == 234168

# PEDAC
# P: write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number,
# and then computes the sum of those mutiples.
# Integers
# include the integer itself
#
# E: 20 => 3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20
#
# D: arrays
#
# A:
# method that returns an array of multiples
#
