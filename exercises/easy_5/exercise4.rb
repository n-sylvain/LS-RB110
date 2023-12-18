def swap(words)
  arr_words = words.split(' ')
  arr_words.map do |arr_word|
    # first_letter = arr_word[0]
    # last_letter = arr_word[-1]
    # arr_word[0] = last_letter
    # arr_word[-1] = first_letter
    # arr_word
    arr_word[0], arr_word[-1] = arr_word[-1], arr_word[0]
    arr_word
  end
  arr_words.join(" ")
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
