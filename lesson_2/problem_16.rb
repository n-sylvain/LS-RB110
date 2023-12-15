# P a UUID
# array letters and numbers + sample method
# array then join

chars = ('a'..'f').to_a + ('0'..'9').to_a
dash = [8, 4, 4, 4, 12]
uuid = []
index = 0

for i in (1..32)
  uuid << chars.sample
  dash[index] -= 1
  if dash[index] == 0 && i != 32
    uuid << "-"
    index += 1
  end
end

uuid = uuid.join
p uuid
