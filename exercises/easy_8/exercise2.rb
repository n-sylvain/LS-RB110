def leading_substrings(text)
  array = []
  count = 1
  while count <= text.size do
    array << text[0, count]
    count += 1
  end

  p array
  array
end

# or
# def leading_substrings(string)
#   result = []
#   0.upto(string.size - 1) do |index|
#     result << string[0..index]
#   end
#   result
# end


p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
