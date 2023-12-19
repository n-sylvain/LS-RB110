def diamond(diamond_size)
  return puts '*' if diamond_size == 1

  shade = diamond_size / 2
  count = 1
  stars = []
  increment = true

  while count > 0 do
    stars << [' ' * shade + '*' * count]
    count += 2 if increment == true
    shade -= 1 if increment == true
    count -= 2 if increment == false
    shade += 1 if increment == false
    increment = false if count >= diamond_size
  end

  puts stars

end

diamond(9)


# def print_row(grid_size, distance_from_center)
#   number_of_stars = grid_size - 2 * distance_from_center
#   stars = '*' * number_of_stars
#   puts stars.center(grid_size)
# end

# def diamond(grid_size)
#   max_distance = (grid_size - 1) / 2
#   max_distance.downto(0) { |distance| print_row(grid_size, distance) }
#   1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
# end
