CARD_VALUE = {
  "2" => 2, "3" => 3, "4" => 4, "5" => 5, "6" => 6, "7" => 7, "8" => 8,
  "9" => 9, "10" => 10, "jack" => 10, "queen" => 10, "king" => 10, "ace" => 11
}
GAME_LIMIT = 21
DEALER_LIMIT = 17

def prompt(msg)
  puts "=>  #{msg}"
end

def initialize_deck
  new_deck = []

  ['hearts', 'diamonds', 'clubs', 'spades'].each do |suits|
    (('2'..'10').to_a + ['jack', 'queen', 'king', 'ace']).each do |values|
      new_deck << [suits, values]
    end
  end

  new_deck
end

# rubocop:disable Metrics/methodLength, Metrics/AbcSize
def display_board(dealer_deck, dealer_score,
                  player_deck, player_score, hide: false)
  system 'clear'
  puts "#{GAME_LIMIT} (light version)".center(26)
  puts ''
  puts 'SCORE BOARD'.center(26)
  puts "DEALER: #{dealer_score}".center(26)
  puts "PLAYER: #{player_score}".center(26)
  puts ''
  puts ''
  puts 'DEALER DECK'.center(26)
  if hide
    puts "deck value : #{update_hand_value(dealer_deck, hide: true)}".center(26)
    puts display_deck(dealer_deck, hide: true)
  else
    puts "deck value : #{update_hand_value(dealer_deck)}".center(26)
    puts display_deck(dealer_deck)
  end
  puts ''
  puts ''
  puts display_deck(player_deck)
  puts "deck value : #{update_hand_value(player_deck)}".center(26)
  puts 'PLAYER DECK'.center(26)
  puts ''
end
# rubocop:enable Metrics/methodLength, Metrics/AbcSize

def display_deck(table_deck, hide: false)
  line_a = '+-----------' * table_deck.size
  line_b = '|           ' * table_deck.size
  line1 = ''
  line2 = ''
  table_deck.each_with_index do |card, index|
    if hide && index > 0
      line1 += "| #{'hidden'.center(10)}"
      line2 += "| #{' '.center(10)}"
    else
      line1 += "| #{card[0].capitalize.center(10)}"
      line2 += "| #{card[1].capitalize.center(10)}"
    end
  end
  ["#{line_a}+", "#{line_b}|", "#{line_b}|", "#{line1}|", "#{line_b}|",
   "#{line2}|", "#{line_b}|", "#{line_b}|", "#{line_a}+"]
end

def update_hand_value(table_deck, hide: false)
  return CARD_VALUE[table_deck[0][1]] if hide

  values = []
  aces = []
  table_deck.each do |card|
    values << CARD_VALUE[card[1]] if card[1] != "ace"
    aces << "ace" if card[1] == "ace"
  end

  result = values.sum
  while aces.size > 0
    result = (11 + result > GAME_LIMIT ? result + 1 : result + 11)
    aces.pop
  end

  result
end

def initial_card_distribution(deck, dealer_deck, player_deck)
  1.upto(4) do |index|
    player_deck << distribute_card!(deck) if index.even?
    dealer_deck << distribute_card!(deck) if index.odd?
  end
end

def distribute_card!(deck)
  deck.delete(deck.sample)
end

def player_choice
  move = ''
  loop do
    prompt "Press 1 to 'HIT', press 2 to for 'STAY'"
    move = gets.chomp.to_i
    break if [1, 2].include?(move)
    prompt "Sorry, that's not a valid choice."
  end
  move
end

def player_deck_update(player_deck, deck)
  player_deck << distribute_card!(deck)
  player_deck
end

def round_score_update(dealer_hand_value, player_hand_value,
                       dealer_score, player_score)
  if dealer_hand_value <= GAME_LIMIT && dealer_hand_value > player_hand_value
    prompt "DEALER wins this round."
    dealer_score += 1
  elsif dealer_hand_value > GAME_LIMIT || player_hand_value > dealer_hand_value
    prompt "PLAYER wins this round!"
    player_score += 1
  elsif player_hand_value == dealer_hand_value
    prompt "It's a draw!"
  end
  [dealer_score, player_score]
end

# START
loop do
  dealer_score = 0
  player_score = 0

  system 'clear'
  puts "Welcome to the game of #{GAME_LIMIT}"
  prompt "Press any key to continue"
  gets.chomp

  loop do
    deck = initialize_deck
    dealer_deck = []
    player_deck = []

    initial_card_distribution(deck, dealer_deck, player_deck)

    loop do
      player_hand_value = update_hand_value(player_deck)
      display_board(dealer_deck, dealer_score,
                    player_deck, player_score, hide: true)

      if player_hand_value == GAME_LIMIT
        prompt "PLAYER wins this round!"
        player_score += 1
        break
      elsif player_hand_value > GAME_LIMIT
        prompt "BUST! You are over #{GAME_LIMIT}."
        prompt "DEALER wins this round."
        dealer_score += 1
        break
      end

      choice = player_choice
      if choice == 1
        player_deck = player_deck_update(player_deck, deck)
      elsif choice == 2
        dealer_hand_value = 0
        loop do
          prompt "DEALER's move."
          sleep 1
          dealer_hand_value = update_hand_value(dealer_deck)
          display_board(dealer_deck, dealer_score, player_deck, player_score)
          if dealer_hand_value < DEALER_LIMIT
            dealer_deck = player_deck_update(dealer_deck, deck)
          elsif dealer_hand_value >= DEALER_LIMIT
            break
          end
        end

        display_board(dealer_deck, dealer_score, player_deck, player_score)
        dealer_score, player_score = round_score_update(dealer_hand_value,
                                                        player_hand_value,
                                                        dealer_score,
                                                        player_score)
        break
      end
    end

    if player_score == 5 || dealer_score == 5
      sleep 2
      display_board(dealer_deck, dealer_score, player_deck, player_score)
      prompt "PLAYER WINS THE GAME!" if player_score == 5
      prompt "GAME OVER. DEALER WINS THE GAME!" if dealer_score == 5
      break
    end

    prompt "Press any key to continue"
    gets.chomp
  end

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing #{GAME_LIMIT}! Good Bye!"
