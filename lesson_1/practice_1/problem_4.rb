['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# => initialize hash to an empty hash
# => value is assigned the element in the array
# hash[key] = value
# hash['a'] = 'ant'
# => {
#      'a' => 'ant'
#      'b' => 'bear'
#      'c' => 'cat'
# }
