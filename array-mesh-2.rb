# Given ONE array of strings, return a new array that contains every combination of each string with every other string in the array.

# Input: ["a", "b", "c", "d"]
# Output: ["ab", "ac", "ad", "ba", "bc", "bd", "ca", "cb", "cd", "da", "db", "dc"]

# Input: ["z", "y", "x"]
# Output: ["zy", "zx", "yz", "yx", "xz", "xy"]

# Input: ["z", "", "z"]
# Output: ["z", "zz", "z", "z", "zz", "z"]

# Write a function that takes in an array of character as input
# Go through each character, and for each character, 
  # Loop through the array as many times as there are elements in the array
    # add the current character and ever other character in the array to a new array
  # Return the new array containing the pairs of characters

def array_mesh(array)
  array_of_pairs = []
  index = 0 
  while index < array.length
    index2 = 0
    while index2 < array.length
      if index != index2
        array_of_pairs << array[index] + array[index2]
      end
      index2 += 1
    end
    index += 1
  end
  array_of_pairs
end

p array_mesh(["a", "b", "c", "d"])
p array_mesh(["z", "", "z",])


