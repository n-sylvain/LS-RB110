munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# add a key/value to the "outer" key/value

members = munsters.keys
counter = 0

loop do
  break if counter == members.size

  current_key = members[counter]
  current_age = munsters[current_key]["age"]
  if current_age < 18
    munsters[current_key]["age_group"] = "adult"
  elsif current_age > 64
    munsters[current_key]["age_group"] = "senir"
  else
    munsters[current_key]["age_group"] = "adult"
  end
  counter += 1
end

def display_nested_hash(hash)
  puts "{"
  hash.each_with_index do |(key, inner_hash), index|
    print "  \"#{key}\" => {"
    inner_hash.each_with_index do |(inner_key, value), inner_index|
      print " \"#{inner_key}\" => #{value}"
      print "," if inner_index < inner_hash.size - 1
    end
    print "}"
    print "," if index < hash.size - 1
    puts
  end
  puts "}"
end

display_nested_hash munsters

# or
# munsters.each do |name, details|
#   case details["age"]
#   when 0...18
#     details["age_group"] = "kid"
#   when 18...65
#     details["age_group"] = "adult"
#   else
#     details["age_group"] = "senior"
#   end
# end
