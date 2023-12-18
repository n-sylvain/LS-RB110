def repeater(string)
  result = []
  string.chars.each { |char| result << char + char }
  result.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
