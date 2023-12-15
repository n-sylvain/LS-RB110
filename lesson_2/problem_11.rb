arr = [[2], [3, 5, 7, 12], [9], [11, 13, 15]]

arr = arr.map do |sub_arr|
  sub_arr.select do |element|
    element % 3 == 0
  end
end

p arr
