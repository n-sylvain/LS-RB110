def multiply_all_pairs(array1, array2)
  array = []
  array1.each do |number1|
    array2.each do |number2|
      array << number2 * number1
    end
  end
  p array.sort
  array.sort

end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
