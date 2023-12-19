def fibonacci(nth)
  return 1 if nth <= 2
  sum = [1, 1]
  3.upto(nth) { |index| sum << (sum[index - 2] + sum[index - 3]) }
  sum.last
end

def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end

  last
end

# 1
# 1
# 2 = 1 + 1
# 3 = 2 + 1
# 5 = 3 + 2

# p fibonacci(2)
# p fibonacci(3)
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501
