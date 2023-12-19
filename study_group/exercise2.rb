def sum_of_squares(array)
  # Your implementation here
  # sum = 0
  # array.each { |number| sum += number * number }
  # sum

  # array.map { |number| number * number }.sum # or reduce(:+)
  array.map { |number| number * number }.reduce(:+)
end

numbers = [1, 2, 3, 4, 5]
p sum_of_squares(numbers) # => 55 (1^2 + 2^2 + 3^2 + 4^2 + 5^2)

def sum_even_index_squares(array)
  sum = 0
  array.each_with_index do |number, index|
    if index.even?
      sum += number * number
    else
      # sum += number
    end
  end
  sum
  # array.map.with_index do |element, index|
  #   p element
  #   p index
  # end
end

p sum_even_index_squares(numbers)
