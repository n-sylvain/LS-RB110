{ a: 'ant', b: 'bear'}.map do |key, value|
  if value.size > 3
    value
  end
end

# => map is transformation, it returns the same number of element
# => returns an array
# => returns [nil, 'bear']
