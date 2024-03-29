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

#  4. Convert a hash into an array of arrays.
#  For example, {"chair" => 100, "book" => 14} becomes [["chair", 100], ["book", 14]].

things = {"chair" => 100, "book" => 14, "ball" => 12}
name_price_pairs = []
things.each do |name, price|
  name_price_pairs << [name, price]
end

p name_price_pairs
p things.to_a

#  5. Convert a hash into an array of hashes using the keys from each hash as the :id key in each of the array's hashes.
#  For example, {321 => {name: "Alice", age: 31}, 322 => {name: "Maria", age: 27}} becomes [{id: 321, name: "Alice", age: 31}, {id: 322, name: "Maria", age: 27}].

people = {321 => {name: "Alice", age: 31}, 322 => {name: "Maria", age: 27}}
people_array = []
people.each do |id, person|
  person["id"] = id
  people_array << person
end
p people_array

#  6. Convert an array of strings into a hash with keys for each string in the array and values for the number of times the string appears in the array.
#  For example, ["do", "or", "do", "not"] becomes {"do" => 2, "or" => 1, "not" => 1}.

words = ["do", "or", "do", "not"]
word_count = {}
words.each do |word|
  if !word_count[word]
    word_count[word] = 1
  else
    word_count[word] += 1
  end
end
p word_count

#  7. Convert a hash into a flat array containing all the hash’s keys and values.
#  For example, {"a" => 1, "b" => 2, "c" => 3, "d" => 4} becomes ["a", 1, "b", 2, "c", 3, "d", 4].

hash = {"a" => 1, "b" => 2, "c" => 3, "d" => 4}
flattened_array = []
hash.each do |letter, number|
  flattened_array << letter
  flattened_array << number
end
p flattened_array
p hash.to_a.flatten

#  8. Combine data from a hash with names and prices and an array of hashes with names, colors, and weights to make a new hash.
#  For example, {"chair" => 75, "book" => 15} and [{name: "chair", color: "red", weight: 10}, {name: "book", color: "black", weight: 1}] becomes {"chair" => {price: 75, color: "red", weight: 10}, "book" => {price: 15, color: "black", weight: 1}}.

price_hash = { "chair" => 75, "book" => 15 }
items = [{ name: "chair", color: "red", weight: 10 }, { name: "book", color: "black", weight: 1 }]
combined_hash = {}
index = 0
while index < items.length
  item = items[index]
  name = item[:name]
  color = item[:color]
  weight = item[:weight]
  price = price_hash[name]
  combined_hash[name] = {price: price, color: color, weight: weight}
  index += 1
end
p combined_hash

# 9. Convert an array of hashes into a hash of arrays, using the author as keys and the titles as values.
# For example, [{author: "Jeff Smith", title: "Bone"}, {author: "George Orwell", title: "1984"}, {author: "Jeff Smith", title: "RASL"}] becomes {"Jeff Smith" => ["Bone", "RASL"], "George Orwell" => ["1984"]}

books = [{author: "Jeff Smith", title: "Bone"}, {author: "George Orwell", title: "1984"}, {author: "Jeff Smith", title: "RASL"}]
books_hash = {}
index = 0
while index < books.length
  book = books[index]
  author = book[:author]
  title = book[:title]
  if books_hash[author] == nil
    books_hash[author] = []
  end
  books_hash[author] << title
  index += 1
end
p books_hash

# 10. Given a hash, create a new hash that has the keys and values switched.
# For example, {"a" => 1, "b" => 2, "c" => 3} becomes {1 => "a", 2 => "b", 3 => "c"}.

hash = {"a" => 1, "b" => 2, "c" => 3}
flipped_hash = {}
hash.each do |key, value|
  flipped_hash[value] = key
end
p flipped_hash


#  1. Convert an array of arrays into a hash.
#  For example, [[1, 3], [8, 9], [2, 16]] becomes {1 => 3, 8 => 9, 2 => 16}.

array = [[1, 3], [8, 9], [2, 16]]
hash = {}
index = 0
while index < array.length
  inner_array = array[index]
  hash[inner_array[0]] = inner_array[1]
  index += 1
end
p hash

#  2. Convert an array of hashes into a hash using the :id key from the array's hashes as the keys in the new hash.
# For example, [{id: 1, color: "blue", price: 32}, {id: 2, color: "red", price: 12}] becomes {1 => {id: 1, color: "blue", price: 32}, 2 => {id: 2, color: "red", price: 12}}.

items = [{id: 1, color: "blue", price: 32}, {id: 2, color: "red", price: 12}]
items_hash = {}
index = 0
while index < items.length
  item = items[index]
  id = item[:id]
  color = item[:color]
  price = item[:price]
  items_hash[id] = {id: id, color: color, price: price}
  index += 1
end
p items_hash

#  3. Convert a string into a hash with keys for each letter in the string and values for the number of times the letter appears in the string.
#  For example, "bookkeeper" becomes {"b" => 1, "o" => 2, "k" => 2, "e" => 3, "p" => 1, "r" => 1}.

letter_hash = {}
"bookkeeper".each_char do |char|
  if letter_hash[char]
    letter_hash[char] += 1
  else
    letter_hash[char] = 1
  end
end
p letter_hash


#  4. Convert a hash into an array of arrays.
#  For example, {"chair" => 100, "book" => 14} becomes [["chair", 100], ["book", 14]].

items_hash = {"chair" => 100, "book" => 14}
items_array = []
items_hash.each do |key, value|
  items_array << [key, value]
end
p items_array


#  5. Convert a hash into an array of hashes using the keys from each hash as the :id key in each of the array's hashes.
#  For example, {321 => {name: "Alice", age: 31}, 322 => {name: "Maria", age: 27}} becomes [{id: 321, name: "Alice", age: 31}, {id: 322, name: "Maria", age: 27}].

people = {321 => {name: "Alice", age: 31}, 322 => {name: "Maria", age: 27}}
people_array = []
people.each do |id, person|
  person[:id] = id
  people_array << person
end
p people_array


#  6. Convert an array of strings into a hash with keys for each string in the array and values for the number of times the string appears in the array.
#  For example, ["do", "or", "do", "not"] becomes {"do" => 2, "or" => 1, "not" => 1}.

words = ["do", "or", "do", "not"]
words_hash = {}
words.each do |word|
  if words_hash[word]
    words_hash[word] += 1
  else
    words_hash[word] = 1
  end
end
p words_hash


#  7. Convert a hash into a flat array containing all the hash’s keys and values.
#  For example, {"a" => 1, "b" => 2, "c" => 3, "d" => 4} becomes ["a", 1, "b", 2, "c", 3, "d", 4].

hash = {"a" => 1, "b" => 2, "c" => 3, "d" => 4}
array = []
hash.each do |key, value|
  array << key
  array << value
end
p array


#  1. Convert an array of arrays into a hash.
#  For example, [[1, 3], [8, 9], [2, 16]] becomes {1 => 3, 8 => 9, 2 => 16}.

array = [[1, 3], [8, 9], [2, 16]]
hash = {}
array.each do |pair|
  hash[pair[0]] = pair[1]
end
p hash











