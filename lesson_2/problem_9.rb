arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

# arr.each_with_index do |element, i|
#   # p element, i
#   element.sort! do |a, b|
#     b <=> a
#   end
# end

# p arr

arr.map do |sub_arr|
  sub_arr.sort do |a, b|
    b <=> a
  end
end
