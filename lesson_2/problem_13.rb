arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

# arr = arr.sort_by do |element|
#   element.any?(odd?)
# end

# p arr

arr.sort_by do |sub_arr|
  sub_arr.select do |num|
    num.odd?
  end
end
