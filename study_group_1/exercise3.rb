def remove_duplicates(array)
  # your implementation here without using uniq
  array.each_with_object([]) do |element, arr|
    arr.push(element) unless arr.include?(element)
  end
end

dup_array = [1, 2, 3, 1, 2, 4, 5]
p remove_duplicates(dup_array) # => [1, 2, 3, 4, 5]

def remove_duplicates_change_to_word(array)
  hash = { 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five'}
  word_numbers = %w(zero one two three four five)
  array.each_with_object([]) do |element, arr|
    arr.push(hash[element]) unless arr.include?(hash[element])
  end
end
p remove_duplicates_change_to_word(dup_array) # => ['one', 'two', 'three', 'four', 'five']

def remove_duplicates(array)
  array.select.with_index do |num, index|
    array.index(num) == index
  end
end
