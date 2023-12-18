# def include?(array, value)
#   result = array.find { |element| element == value}
#   if result
#     return true
#   else
#     return false
#   end
# end

def include?(array, value)
  !!array.find_index(value)
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false
