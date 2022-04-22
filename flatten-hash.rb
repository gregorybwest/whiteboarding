# Given a hash, return a flat array containing all the hash’s keys and values.

# Input: {"a" => 1, "b" => 2, "c" => 3, "d" => 4}
# Output: [“a”, 1, “b”, 2, “c”, 3, “d”, 4]

def flatten_hash(hash)
  # converts hash into array of array, with each key => value as its own array
  array_of_hash = hash.to_a
  # turns the array of arrays into a single array
  array_of_hash.flatten
end

p flatten_hash({"a" => 1, "b" => 2, "c" => 3, "d" => 4})