a = 2
b = [5, 8]
arr = [a, b] # => [2, [5, 8]]

arr[0] += 2  # => [4]
arr[1][0] -= a # => [2, [1, 8]]

# a would be 4
# b would be [1, 8]
