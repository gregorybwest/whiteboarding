# You are given two parameters, an array and a number. Return a hash whose keys are each of the values from the array parameter, and whose values are the number parameter.

# Input:

# First argument: ["a", "e", "i", "o", "u"]
# Second argument: 1

# Output:

# {
# 'a' => 1,
# 'e' => 1,
# 'i' => 1,
# 'o' => 1,
# 'u' => 1
# }

# write a function
# create an empty hash
# loop through the array and make each element a key in the hash with a value equal to 1

def array_to_hash(array)
  hash = {}
  array.each do |char|
    hash[char] = 1
  end
  hash
end


p array_to_hash(["a", "e", "i", "o", "u"])