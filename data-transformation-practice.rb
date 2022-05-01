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
# faster way to do the code above 
puts pairs.to_h

#  2. Convert an array of hashes into a hash using the :id key from the array's hashes as the keys in the new hash.
#  For example, [{id: 1, color: "blue", price: 32}, {id: 2, color: "red", price: 12}] becomes {1 => {id: 1, color: "blue", price: 32}, 2 => {id: 2, color: "red", price: 12}}.

hashes_array = [{id: 1, color: "blue", price: 32}, {id: 2, color: "red", price: 12}]
info_hash = {}
index = 0
while index < hashes_array.length
  info_hash[hashes_array[index][:id]] = hashes_array[index]
  index += 1
end

p info_hash

# 3. Convert a string into a hash with keys for each letter in the string and values for the number of times the letter appears in the string.
# For example, "bookkeeper" becomes {"b" => 1, "o" => 2, "k" => 2, "e" => 3, "p" => 1, "r" => 1}.

def letter_hash(string)
  letter_hash = {}
  string.each_char do |letter|
    if !letter_hash[letter]
      letter_hash[letter] = 1
    else
      letter_hash[letter] += 1
    end
  end
  letter_hash
end

p letter_hash("bookkeeper") == {"b" => 1, "o" => 2, "k" => 2, "e" => 3, "p" => 1, "r" => 1} # ==> true 



