# ALPHABET = ('a'..'z').to_a.push(" ")

# def cleanup(str)
#   result_temp = str.chars.map do |char|
#     char = " " if !ALPHABET.include?(char)
#     char
#   end
#   result = []
#   result_temp.each
# end

ALPHABET = ('a'..'z').to_a

def cleanup(text)
  clean_chars = []

  text.chars.each do |char|
    if ALPHABET.include?(char)
      clean_chars << char
    else
      clean_chars << ' ' unless clean_chars.last == ' '
    end
  end

  clean_chars.join
end

# or
# def cleanup(text)
#   text.gsub(/[^a-z]/, ' ').squeeze(' ')
# end

p cleanup("---what's my +*& line?") # == ' what s my line '
