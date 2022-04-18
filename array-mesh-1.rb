# Given two arrays of strings, return a new string that contains every combination of a string from the first array concatenated with a string from the second array.

# Input: ["a", "b", "c"], ["d", "e", "f", "g"]
# Output: ["ad", "ae", "af", "ag", "bd", "be", "bf", "bg", "cd", "ce", "cf", "cg"]

# Write a function that takes in two array of characters as input
# Loop through each letter of the second array against each letter of the first array
  # Add the two letters together and shovel them into a new array
# Return the new array of concatenated string

def array_mesh(array1, array2)
  string_combos = []
  index = 0
  while index < array1.length
    index2 = 0
    while index2 < array2.length
      string_combos << array1[index] + array2[index2]
      index2 += 1
    end
    index += 1
  end
  string_combos
end

p array_mesh(["a", "b", "c"], ["d", "e", "f", "g"]) == 0
p array_mesh(["a", "b", "c"], ["d", "e", "f", "g"])

