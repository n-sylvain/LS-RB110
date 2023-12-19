def buy_fruit(array)
  basket = []
  array.each do |arr|
    arr.last.times { basket << arr.first }
  end
  basket
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==  ["apples", "apples", "apples", "orange", "bananas","bananas"]
