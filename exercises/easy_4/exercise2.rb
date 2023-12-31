def century(year)
  cent = year % 100 > 0 ? year / 100 + 1 : year / 100
  if cent % 10 == 1
    cent % 100 == 11 ? "#{cent}th" : "#{cent}st"
  elsif cent % 10 == 2
    cent % 100 == 12 ? "#{cent}th" : "#{cent}nd"
  elsif cent % 10 == 3
    cent % 100 == 13 ? "#{cent}th" : "#{cent}rd"
  else
    "#{cent}th"
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'


# def century(year)
#   century = year / 100 + 1
#   century -= 1 if year % 100 == 0
#   century.to_s + century_suffix(century)
# end

# def century_suffix(century)
#   return 'th' if [11, 12, 13].include?(century % 100)
#   last_digit = century % 10

#   case last_digit
#   when 1 then 'st'
#   when 2 then 'nd'
#   when 3 then 'rd'
#   else 'th'
#   end
# end
