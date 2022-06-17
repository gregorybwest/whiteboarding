# Write a function that takes in a string as an argument and returns all the unique 2-letter combinations that can be made from that string

# input: "abc"
# output: [["a", "b"], ["a", "c"], ["b", "c"], ["a", "c"]]

def char_pairs(s)
  index = 0
  letter_hash = {}
  s.each_char do |letter|
    if !letter_hash[letter]
      letter_hash[letter] = 1
    else
      letter_hash[letter] += 1
    end
  end
  pairs_array = []
  index = 0
  while index < letter_hash.keys.length - 1
    index2 = index + 1
    while index2 < letter_hash.keys.length
      pairs_array << [letter_hash.keys[index], letter_hash.keys[index2]]
      index2 += 1
    end
    index += 1
  end
  pairs_array
end

p char_pairs("beabeefeab")
# p char_pairs("asdcbsdcagfsdbgdfanfghbsfdab")
# p char_pairs("asvkugfiugsalddlasguifgukvsa")