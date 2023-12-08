flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! { |member| member = member[0, 3] }

p flintstones
