def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"

# this method will return a different object

# Your initial hunch might have been that the method will return the same string object. Since we are using mutating method String#reverse! inside of the do..end block, and we are also calling each method on the resulting array, which also returns the original array.

# However, as soon as we have converted string into an array by calling split method on it, it is no longer possible for us to get back the original object again. Even just doing str.split.join(" ") returns a different object since you are splitting the string into an array and then joining that array back into a new string, with the same sequence of characters but still, a different object.
