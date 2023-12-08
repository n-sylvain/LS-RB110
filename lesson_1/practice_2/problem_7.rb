statement = "The Flintstones Rock"

# => { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

# letter frequencies
# not case sensitive
# input = array
# output = hash
# initialize a hash to an empty hash
# convert string to array
# iterate through each element of the array
# check if the iterated element is in the hash, if not, add it. if yes, increment value by 1. If " ", skip
# return has

frequencies = {}
arr = statement.chars
counter = 0

arr.each do |letter|
  if letter == " "
    next
  elsif !frequencies.has_key?(letter)
    frequencies[letter] = 1
  elsif frequencies.has_key?(letter)
    frequencies[letter] += 1
  end
end

p frequencies


# or
# result = {}
# letters = ('A'..'Z').to_a + ('a'..'z').to_a

# letters.each do |letter|
#   letter_frequency = statement.count(letter)
#   result[letter] = letter_frequency if letter_frequency > 0
# end
