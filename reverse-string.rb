# Write a function that takes in a string as a parameter and returns the reverse of that string

# Input: "hello"
# Output: "olleh"

# Write a function that takes in a string as a parameter
# Set a variable to an empty string which will eventually contain the reversed string
# Set index to start loop at the last letter in the array
# Loop through each element of the array of characters starting at the end of the array, pushing each element into the reversed string variable. 
# Return the reversed string


# def reverse_string(string)
#   reversed_string = []
#   string_array = string.split("")
#   string.length.times do 
#     reversed_string << string_array.pop
#   end
#   reversed_string.join
# end

# p reverse_string("how are you")

# def reverse_string(string)
#   reversed_string = ""
#   index = string.length - 1
#   while index >= 0
#     reversed_string += string[index]
#     index -= 1
#   end
#   reversed_string
# end

# p reverse_string("hello")

######################################################################################################

# This solution allows index to = 0 

# Write a function that takes in an array as an argument
# Create a variable set to an empty string to store the reversed string
# Set an index to 0
# While index is less than length of string, set reversed string equal to letter at current index plus the current letters of the reversed string
# Return reversed string

def reverse_string(string)
  reversed_string = ""
  index = 0
  while index < string.length
    reversed_string = string[index] + reversed_string
    index += 1
  end
  reversed_string
end

p reverse_string("hello")
