ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# use select

# ages_below100 = {}
# ages.select do |key, value|
#   ages_below100[key] = value if value < 100
# end

# p ages_below100

ages.select! { |key, value| ages[key] = value if value < 100 }

p ages
