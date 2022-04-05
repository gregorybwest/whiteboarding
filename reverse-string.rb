# Write a function that takes in a string as a parameter and returns the reverse of that string

# Input: "hello"
# Output: "olleh"

# Write a function that takes in a string as a parameter
# Set a variable to an empty string which will eventually contain the reversed string
# Split the string into an array of characters
# Loop through each element of the array of characters starting at the end of the array, pushing each element into the reversed string variable. 
# Return the reversed string

# def reverse_string(string)
#   reversed_string = []
#   index = string.length - 1
#   string_array = string.split("")
#   while index >= 0
#     reversed_string.push(string_array[index])
#     index -= 1
#   end
#   reversed_string.join
# end

# p reverse_string("how are you")

def reverse_string(string)
  reversed_string = []
  string_array = string.split("")
  string.length.times do 
    reversed_string << string_array.pop
  end
  reversed_string.join
end

p reverse_string("how are you")