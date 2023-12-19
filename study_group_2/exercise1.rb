
=begin
The objective is to return all pairs of integers from a given array of integers
that have a difference of 2.

The result array should be sorted in ascending order of values.

Assume there are no duplicate integers in the array. The order of the integers
the input array should not matter.

all_pairs([1, 2, 3, 4]) == [[1, 3], [2, 4]]
all_pairs([4, 1, 2, 3]) == [[1, 3], [2, 4]]
all_pairs([1, 23, 3, 4, 7]) == [[1, 3]]
all_pairs([4, 3, 1, 5, 6]) == [[1, 3], [3, 5], [4, 6]]

P:
input : array
output : array (not the same object)
rules:
  Explicit requirements:
  - result array should be sorted, inner arrays also
  - no duplicate integers in the array
  - order of the integers in the input does not matter
  Implicit requirements:
  - output nested array can have several number

E:

DA: arrays
initialize an empty array
iterate through the array
  check with each remaining element in the array with the result of the pair
    if delta is 2, add to the result array
sort array
=end

def all_pairs(array)
  result = []
  array.each_with_index do |number_first, index|
    array[index+1..-1].each do |number_last|
      result << [number_first, number_last].sort if (number_first - number_last).abs == 2
    end
  end
  result.sort
end


p all_pairs([1, 2, 3, 4]) == [[1, 3], [2, 4]]
p all_pairs([4, 1, 2, 3]) == [[1, 3], [2, 4]]
p all_pairs([1, 23, 3, 4, 7]) == [[1, 3]]
p all_pairs([4, 3, 1, 5, 6]) == [[1, 3], [3, 5], [4, 6]]
