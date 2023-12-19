def balanced?(string)
  parenthesis = 0
  string.chars.each do |char|
    parenthesis += 1 if char == '('
    parenthesis -= 1 if char == ')'
    return false if parenthesis < 0
  end
  parenthesis == 0 ? true : false
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
p balanced?('What ())(is() up') == false
