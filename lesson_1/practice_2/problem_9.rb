words = "the flintstones rock"
# => words = "The Flintstones Rock"

words = words.split.map { |word| word.capitalize }.join(' ')

p words
