def rotate_array(array)
  new_array = array.dup
  new_array.push(new_array.delete_at(0))
end

# or
# def rotate_array(array)
#   array[1..-1] + [array[0]]
# end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true
