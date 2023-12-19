word = 'what-a-b.e.a.utiful day!'
characters = ('a'..'z').to_a

# %w(a b c d)
# 'abc'.split()
# 'a', 'b', 'c'

# Your Code Here
word.delete!('^a-z')
crazy_letters = word.chars.map.with_index do |char, i|
  if i.odd?
    char.upcase
  else
    char
  end
end


p crazy_letters # ['w', 'H', 'a', 'T', 'a', 'B', 'e', 'A', 'u', 'T', 'i', 'F', 'u', 'L', 'd', 'A', 'y']

####
word2 = 'what-a-b.e.a.utiful day!'
p word2.chars.select{ |char| characters.include?(char) }.join
