#  1. Convert an array of arrays into a hash.
#  For example, [[1, 3], [8, 9], [2, 16]] becomes {1 => 3, 8 => 9, 2 => 16}.

pairs = [[1, 3], [8, 9], [2, 16]]
pairs_hash = {}
index = 0
while index < pairs.length
  key = pairs[index][0]
  value = pairs[index][1]
  pairs_hash[key] = value
  index += 1
end

puts pairs_hash