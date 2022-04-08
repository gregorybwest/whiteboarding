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

def palindrome(string)
  if string == string.reverse
    return true
  end
  return false
end

p palindrome("racecar")
p palindrome("tacocat")
p palindrome("baloney")

