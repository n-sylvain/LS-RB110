require 'curses'

class SnakeGame
  def initialize
    @snake = [[0, 0]]
    @food = spawn_food
    @direction = :right
    @score = 0
  end

  def run
    Curses.init_screen
    Curses.timeout = 100

    loop do
      handle_input
      move_snake
      check_collision
      draw_game
    end
  ensure
    Curses.close_screen
  end

  private

  def handle_input
    key = Curses.getch
    case key
    when 'z'  # 'z' for up
      @direction = :up if @direction != :down
    when 's'  # 's' for down
      @direction = :down if @direction != :up
    when 'q'  # 'q' for left
      @direction = :left if @direction != :right
    when 'd'  # 'd' for right
      @direction = :right if @direction != :left
    when 'p'
      exit
    end
  end

  def move_snake
    case @direction
    when :up
      @snake.unshift([(@snake.first[0] - 1) % 20, @snake.first[1]])
    when :down
      @snake.unshift([(@snake.first[0] + 1) % 20, @snake.first[1]])
    when :left
      @snake.unshift([@snake.first[0], (@snake.first[1] - 1) % 20])
    when :right
      @snake.unshift([@snake.first[0], (@snake.first[1] + 1) % 20])
    end

    @snake.pop unless ate_food?
  end

  def check_collision
    if @snake[1..-1].include?(@snake.first)
      exit_game
    end
  end

  def ate_food?
    if @snake.first == @food
      @food = spawn_food
      @score += 1
    end
  end

  def spawn_food
    food = nil
    loop do
      food = [rand(20), rand(20)]
      break unless @snake.include?(food)
    end
    food
  end

  def draw_game
    Curses.clear
    draw_snake
    draw_food
    draw_score
  end

  def draw_snake
    @snake.each { |segment| Curses.setpos(segment[0], segment[1]); Curses.addch('O') }
  end

  def draw_food
    Curses.setpos(@food[0], @food[1])
    Curses.addch('X')
  end

  def draw_score
    Curses.setpos(20, 0)
    Curses.addstr("Score: #{@score}")
  end

  def exit_game
    Curses.close_screen
    puts "Game Over! Your Score: #{@score}"
    exit
  end
end

SnakeGame.new.run
