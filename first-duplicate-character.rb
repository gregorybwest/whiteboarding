# Given a string, write a function that returns the first occurence of two duplicate characters in a row, and return the duplicated character.

# Input: “abcdefghhijkkloooop”
# Output: “h”

# Write a function that takes in a string as an argument
# Set an index to 0
# While index is less than the length of the string
  # Check if element at current index is equal to element at current index plus one
    # If element at current index is equal to element at current index plus one, return that element
    # If there is no consecutive duplicate found, return "" at the end of the function 

def return_first_duplicate(string)
  index = 0
  while index < string.length
    if string[index] == string[index + 1]
      return string[index]
    end
    index += 1
  end
  return ""
end

p return_first_duplicate("abcdefghhijkkloooop") # ==> "h"

