ALPHABET = ('A'..'Z').to_a + ('a'..'z').to_a

def staggered_case(text)
  count = 0
  need_upper = true
  result = []
  while count < text.size do
    if ALPHABET.include?(text.chars[count]) && need_upper
      result << text.chars[count].upcase
      need_upper = false
    elsif ALPHABET.include?(text.chars[count]) && !need_upper
      result << text.chars[count].downcase
      need_upper = true
    else
      result << text.chars[count]
    end
    count += 1
  end
  p result.join
  result.join

end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
