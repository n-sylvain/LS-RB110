
require 'pry'

CARD_VALUE = {
  "2" => 2, "3" => 3, "4" => 4, "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9, "10" => 10,
  "jack" => 10, "queen" => 10, "king" => 10,
  "ace" => 11
}

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

def display_board(dealer_deck, dealer_score, player_deck, player_score, hide: false)
  system 'clear'
  puts '21 (light version)'.center(30)
  puts ''
  puts 'SCORE BOARD'
  puts "DEALER: #{dealer_score}"
  puts "PLAYER: #{player_score}"
  puts ''
  puts ''
  puts 'DEALER DECK'.center(23)
  puts "deck value : #{update_hand_value(dealer_deck, hide: true)}".center(23) # ajouter cas non-hide
  puts display_deck(dealer_deck, hide: true)
  puts ''
  puts ''
  puts display_deck(player_deck)
  puts "deck value : #{update_hand_value(player_deck)}".center(23)
  puts 'PLAYER DECK'.center(23)
  puts ''
end

def display_deck(table_deck, hide: false)
  line_a = '+----------' * table_deck.size
  line_b = '|          ' * table_deck.size
  line1 = ''
  line2 = ''
  table_deck.each_with_index do |card, index|
    if hide && index > 0
      line1 += "| #{'hidden'.center(9)}"
      line2 += "| #{' '.center(9)}"
    else
      line1 += "| #{card[0].center(9)}"
      line2 += "| #{card[1].center(9)}"
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
    result = if 11 + result > 21
               result + 1
             else
               result + 11
             end
    aces.pop
  end

  result
end

def distribute_card!(deck)
  deck.delete(deck.sample)
end

def player_choice
  move = ''
  loop do
    prompt "Press 1 for 'HIT', press 2 for 'STAY'"
    move = gets.chomp.to_i
    break if move == 1 || move == 2
    prompt "Sorry, that's not a valid choice."
  end
  move
end

def player_deck_update(player_deck, deck)
  player_deck << distribute_card!(deck)
  player_deck
end

deck = initialize_deck
player_deck = []
player_score = 0
dealer_deck = []
dealer_score = 0
bust = false

# initial round
1.upto(4) do |index|
  player_deck << distribute_card!(deck) if index.even?
  dealer_deck << distribute_card!(deck) if index.odd?
end

# player_deck = [["", "2"], ["", "2"], ["", "ace"], ["", "ace"], ["", "ace"], ["", "ace"]]
# p update_hand_value(player_deck)
# puts display_deck(player_deck, hide: true)
# puts display_deck(player_deck)

# puts display_deck(player_deck)
# p player_deck
# p dealer_deck
# p deck

loop do
  display_board(dealer_deck, dealer_score, player_deck, player_score, hide: true)

  hand_value = update_hand_value(player_deck)
  if hand_value > 21
    bust = true
    prompt "BUST. You are over 21"
    prompt "DEALER wins this round"
    dealer_score += 1
    break
  end

  choice = player_choice
  if choice == 1
    player_deck = player_deck_update(player_deck, deck)
  elsif choice == 2
    break
  end

  # loop do


  # end
end

# display_board(dealer_deck, dealer_score, player_deck, player_score, hide: false)
