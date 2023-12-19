def switches_on(number)
  array = (1..number).to_a.map { |_| false }
  result = []

  1.upto(number) do |n|
    index = n
    loop do
      array[index - 1] = !array[index - 1]
      index += n
      break if index > number
    end
  end

  array.each_with_index{ |number, index| result << index + 1 if number == true }
  result
end

p switches_on(5)
p switches_on(10)
p switches_on(1000)

# # initialize the lights hash
# def initialize_lights(number_of_lights)
#   lights = Hash.new
#   1.upto(number_of_lights) { |number| lights[number] = "off" }
#   lights
# end

# # return list of light numbers that are on
# def on_lights(lights)
#   lights.select { |_position, state| state == "on" }.keys
# end

# # toggle every nth light in lights hash
# def toggle_every_nth_light!(lights, nth)
#   lights.each do |position, state|
#     if position % nth == 0
#       lights[position] = (state == "off") ? "on" : "off"
#     end
#   end
# end

# # Run entire program for number of lights
# def toggle_lights(number_of_lights)
#   lights = initialize_lights(number_of_lights)
#   1.upto(lights.size) do |iteration_number|
#     toggle_every_nth_light!(lights, iteration_number)
#   end

#   on_lights(lights)
# end

# p toggle_lights(1000)
