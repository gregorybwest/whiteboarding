# Given two strings of equal length, write a function that returns the number of characters that are different between the two strings.

# Input: "ABCDEFG", "ABCXEOG"
# Output: 2

# Explanation: While the A, B, C, E, and G are in the same place for both strings, they have different characters in the other spaces. Since there are 2 such spaces that are different (the D and F in the first string), we return 2.

# Input: "ABCDEFG", "ABCDEFG",
# Output: 0


# Write a function that takes in two string of equal length
# Set a variable that will store the number of differences between the two strings to 0
# Set and index to 0
# While index is less than length of string
  # If element at current index of first string is different than element at current index of second string, increment the variable that stores the differences by 1. 
# Return the differences variable

def hamming(string1, string2)
  differences = 0
  index = 0
  while index < string1.length
    if string1[index] != string2[index]
      differences += 1
    end
    index += 1
  end
  differences
end

p hamming("ABCDEFG", "ABCXEOG")  # ==> returns 2
p hamming("ABCDEFG", "ABCDEFG")  # ==> returns 0