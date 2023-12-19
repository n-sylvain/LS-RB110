LOWERCASE = ('a'..'z').to_a.join
UPPERCASE = ('A'..'Z').to_a.join

def letter_percentages(string)
  hsh = {
    lowercase: 0,
    uppercase: 0,
    neither: 0
  }
  hsh[:lowercase] = string.count(LOWERCASE) / string.size.to_f * 100
  hsh[:uppercase] = string.count(UPPERCASE) / string.size.to_f * 100
  hsh[:neither] = 100.0 - hsh[:lowercase] - hsh[:uppercase]
  hsh
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }


# def letter_percentages(string)
#   counts = {}
#   percentages = {}
#   characters = string.chars
#   length = string.length

#   counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
#   counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
#   counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }

#   calculate(percentages, counts, length)

#   percentages
# end

# def calculate(percentages, counts, length)
#   percentages[:lowercase] = (counts[:lowercase] / length.to_f) * 100
#   percentages[:uppercase] = (counts[:uppercase] / length.to_f) * 100
#   percentages[:neither] = (counts[:neither] / length.to_f) * 100
# end
