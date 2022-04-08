# Given a string, write a function that returns true if it is a palindrome, and false if it is not. (A palindrome is a word that reads the same both forward and backward.)

# Input: “racecar”
# Output: true

# Input: “baloney”
# Output: false

# Input: tacocat
# Output: true

# Write a function that takes in a string as an arugment
# If the string is equal to the reversed string, return true
# If not, return false

# def palindrome(string)
#   if string == string.reverse
#     return true
#   end
#   return false
# end

# p palindrome("racecar")
# p palindrome("tacocat")
# p palindrome("baloney")

# Write a function that takes in a string as an argument
# use two indices, one starting at 0 and the other starting at length of string minus one, or the end of the string
# While first index is less than string length and second index is greater than or equal to 0, compare the current element of the string at each of the two indices. 
  # If the two elements are not equal, return false
# Increment the first index, decrement the second index 
# If we got through the loop without returning false, return true

def palindrome(string)
  index1 = 0
  index2 = string.length - 1
  while index1 < string.length && index2 >= 0
    if string[index1] != string[index2]
      return false
    end
    index1 += 1
    index2 -= 1
  end
  return true
end

p palindrome("racecar")
p palindrome("tacocat")
p palindrome("baloney")

