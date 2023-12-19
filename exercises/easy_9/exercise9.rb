words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

# anagrams = Hash.new { |hash, key| hash[key] = [] }

# words.each do |word|
#   anagram_key = word.chars.sort.join
#   anagrams[anagram_key] << word
# end

# anagrams.each_value do |group|
#   puts group.inspect if group.length > 1
# end


result = {}
# Now that we know how to find anagrams, we can use a hash to store the sorted version of the word as
# the key in the hash and its value will be an array of all anagrams of that word.

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each_value do |v|
  # puts "------"
  p v
end
