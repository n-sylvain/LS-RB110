def greetings(name, role)
  puts "Hello, #{name.join(' ')}! Nice to have a #{role[:title]} #{role[:occupation]} around."
end


greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => "Hello, John Q Doe! Nice to have a Master Plumber around."
