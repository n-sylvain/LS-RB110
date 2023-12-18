# ALPHABET = ('a'..'z').to_a + ('A'..'Z').to_a

# def clean_text(str)
#   clean_str = []
#   str.chars.each do |char|
#     clean_str << char if ALPHABET.include?(char)
#   end
#   clean_str.join
# end

# def word_sizes(text)
#   hsh = Hash.new(0)
#   text.split.each do |word|
#     hsh[clean_text(word).size] += 1
#   end
#   hsh
# end

# or
def word_sizes(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    clean_word = word.delete('^A-Za-z')
    counts[clean_word.size] += 1
  end
  counts
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}
