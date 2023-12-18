# def find_fibonacci_index_by_length(digits)
#   count = 2
#   arr_fibonacci = [1, 1]

#   while arr_fibonacci.last.to_s.size < digits do
#     arr_fibonacci << arr_fibonacci[-1] + arr_fibonacci[-2]
#     # p arr_fibonacci.last.to_s
#     count += 1
#   end
#   # p arr_fibonacci
#   # p count
#   count
# end

def find_fibonacci_index_by_length(number_digits)
  first = 1
  second = 1
  index = 2

  loop do
    index += 1
    fibonacci = first + second
    break if fibonacci.to_s.size >= number_digits

    first = second
    second = fibonacci
  end

  index
end


p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
