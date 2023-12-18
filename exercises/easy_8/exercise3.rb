def leading_substrings(text)
  array = []
  count = 1
  while count <= text.size do
    array << text[0, count]
    count += 1
  end

  array
end

def substrings(string)
  array = []
  count = 0

  while count <= string.size do
    array << leading_substrings(string[0 + count, string.size - count])
    count += 1
  end

  array.flatten
end



p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
