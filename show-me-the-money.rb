# Given a string, write a function that returns true if the “$” character is contained within the string or false if it is not.

# Input: “i hate $ but i love money i know i know im crazy”
# Output: true

# Input: “abcdefghijklmnopqrstuvwxyz”
# Output: false

# def show_me_the_money(string)
#   string.include?("$")
# end

# p show_me_the_money("abcdefghijklmnopqrstuvwxyz")

# Write a function that takes in a string as an argument
# Set index to 0
# While index is less than length of string, loop through the characters in the string
  # If the character at current index is a "$" symbol, return true and break
  # Else if we get to the end of the string and don't find the "$" symbol, return false

# def show_me_the_money(string)
#   index = 0
#   while index < string.length
#     if string[index] == "$"
#       return true
#     end
#     index += 1
#   end
#   return false
# end

def show_me_the_money(string)
  string.chars.each do |letter|
    if letter == "$"
      return true
    end
  end
  return false
end

p show_me_the_money("abcdefghi$jklmnopqrstuvwxyz")  # ==> returns true

p show_me_the_money("abcdefghijklmnopqrstuvwxyz")  # ==> returns false
