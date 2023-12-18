# def ascii_value(str)
#   counter = 0
#   sum = 0
#   arr = str.chars

#   loop do
#     break if arr == []

#     sum += arr[counter].ord
#     counter += 1
#     break if counter == arr.size
#   end

#   sum
# end

def ascii_value(str)
  sum = 0
  arr = str.chars
  return sum if arr == []

  arr.each do |el|
    sum += el.ord
  end

  sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0
