def count_occurrences(array)
  occurences = Hash.new(0)
  array.each { |word| occurences[word] += 1 }
  occurences.each { |key, value| puts "#{key} => #{value}"}
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

puts count_occurrences(vehicles)
