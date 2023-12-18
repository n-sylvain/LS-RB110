# split words
# initialize a hash
# iteration through each words
# incremente hash

def word_sizes(text)
  # hsh = {}
  hsh = Hash.new(0)
  text.split.each do |word|
    # if hsh.has_key?(word.size)
    #   hsh[word.size] += 1
    # else
    #   hsh[word.size] = 1
    # end
    hsh[word.size] += 1
  end
  hsh
end


p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}
