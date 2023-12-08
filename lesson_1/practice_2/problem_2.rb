ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# Add up all of the ages from the Munster family hash

# iteration on a hash

members = ages.values
counter = 0
sum_age = 0

loop do
  break if counter == ages.size
  sum_age += members[counter]
  counter += 1
end

p sum_age

# OR
# total_ages = 0
# ages.each { |_, age| total_ages += age }
# total_ages

# OR
# ages.values.inject(:+)
