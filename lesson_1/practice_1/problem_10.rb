[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# => map returns an array and same number of element
# => [1, nil, nil]
