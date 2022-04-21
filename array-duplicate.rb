# A given array has one pair of duplicate values. Return the first duplicate value.

# NOTE: You must accomplish this in O(n) time. This is also known as linear time.

# Input: [5, 2, 9, 7, 2, 6]
# Output: 2

# Write a function that takes in an array of numbers as an argument
# Set a variable to an emtpy hash
# Loop through the array
  # If a number isn't in the hash, set it as a key with value of 1
  # If a number already exists in the hash, return that number

def array_duplicate(array)
  hash = {}
  array.each do |num|
    if hash[num]
      return num
    else
      hash[num] = 1
    end
  end
end

p array_duplicate([5, 2, 9, 7, 2, 6]) # ==> 2
p array_duplicate([5, 2, 9, 7, 5, 2, 6]) # ==> 5

