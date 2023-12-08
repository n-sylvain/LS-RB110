flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# use each and use string slice and compare. Save index and return it
# or use loop

member_index = 0
flintstones.each_with_index do |member, index|
  member_index = index if member[0, 2] == 'Be'
end

p member_index

# flintstones.index { |name| name[0, 2] == "Be" }
#
