def multiply_list(array1, array2)
  array = []
  array1.each_with_index do |number, index|
    array << (number * array2[index])
  end
  array
end




p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
