# Given a string of words, write a function that returns a new string that contains the words in reverse order.

# Input: “popcorn is so cool isn’t it yeah i thought so”
# Output: “so thought i yeah it isn’t cool so is popcorn”

# Input: “how are things lately?”
# Output: “lately? things are how”

# Input: “tell me about yourself.”
# Output: “yourself. about me tell”

# Write a function that takes in a string as an arguement
# Set a variable that will store and array of words in reverse to an empty array
# Convert the string into an array of words by splitting it up, separated by " " (empty space)
# Loop through the array starting at the end of the array, shoveling the words into the reverse words array
# Join the words together to create a string

def reverse_words(string)
  reversed_words = []
  word_array = string.split(" ")
  word_array.reverse.join(" ")
end

p reverse_words("popcorn is so cool isn't it yeah i thought so")

