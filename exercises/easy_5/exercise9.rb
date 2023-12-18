def crunch(text)
  clean_text = []
  text.chars.each_with_index do |char, index|
    if index == 0
      clean_text << char
    elsif clean_text.last != char
      clean_text << char
    end
  end
  clean_text.join
end

# or
# def crunch(text)
#   index = 0
#   crunch_text = ""
#   while index <= text.length - 1
#       crunch_text << text[index] unless text[index] == text[index + 1]
#       index += 1
#   end
#   crunch_text
# end


p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
