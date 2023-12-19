# def wordOfLengthN(words, length)
#   words.select { |word| word.size == length }
# end

# my_words = ['foo', 'bar', 'baz']
# p wordOfLengthN(my_words, 3) # => ['foo', 'bar', 'baz']
# p wordOfLengthN(my_words, 2) # => []

def wordOfLengthN(words, lengths)
  words.select do |word|
    lengths.include?(word.size)
  end
end

my_words = ['foo', 'bar', 'baz', 'bing']
p wordOfLengthN(my_words, [3]) # => ['foo', 'bar', 'baz']
p wordOfLengthN(my_words, [2, 4]) # => ['bing']
