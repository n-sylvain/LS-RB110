WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]]              # diagonals

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_position_line(brd, marker)
  WINNING_LINES.each do |line|
    if brd.values_at(line[0], line[1], line[2]).count(marker) == 2
      brd.values_at(line[0], line[1], line[2]).each_with_index do |element, index|
        target = index if element == marker
      end
      return [true, target]
    end
  end
  [false, 0]
end

array = ["X", "X", " "]

def defense(array)
  position = 0
  array.each_with_index do |element, index|
    position = index if element == ' '
  end
  position
end

p defense(array)


=begin

=end
