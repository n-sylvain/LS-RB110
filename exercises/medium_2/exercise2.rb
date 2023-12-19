# require 'pry'

# BLOCK = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM)

# def search_block(char)
#   BLOCK.each_with_object([]) do |block, arr|
#     arr.push(block[0], block[1]) if block.chars.include?(char.upcase)
#   end
# end

# def block_word?(text)
#   text.chars.each_with_index do |char, index|
#     block_ref = search_block(char)
#     text[index..-1].chars.each do |ele|
#       # binding.pry
#       return false if block_ref.include?(ele.upcase)
#     end
#   end
#   true
# end

# # p block_word?('BATCH') == true
# p block_word?('BUTCH') == false
# # p block_word?('jest') == true

BLOCK = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(string)
  up_string = string.upcase
  BLOCKS.non? { |block| up_string.count(block) >= 2}
end
