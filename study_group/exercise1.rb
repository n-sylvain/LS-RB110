def palindrome?(word)
  # your implementation here
  word.reverse == word
end

test_word1 = 'level'
test_word2 = 'ruby'
p palindrome?(test_word1)
p palindrome?(test_word2)

=begin
P: Write a method that takes in a string and returns true if the string is a palidrome (the same word backwards and
forwards)

test_word1 = 'level'
test_word2 = 'ruby'

A:
- compare reverse of string and see if they are a match


=end
