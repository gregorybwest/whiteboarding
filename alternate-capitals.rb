# Given a string, write a function that returns a copy of the original string that has every other character capitalized. (Capitalization should begin with the second character.)

# Input: “hello, how are your porcupines today?”
# Output: “hElLo, HoW ArE YoUr pOrCuPiNeS ToDaY?”

# Write a function that takes in a string as an argument
# create a variable set to an emtpy string that will contain our new alternate capital string
# set an index to 0
# loop through each character of the string as long as index < string.length
  # if the index at the current character in the loop is an odd number, capitalize that letter
    # to do this, use conditional statement, if index divided by 2 has a remainder that is not equal to zero, capitalize that letter and add it to new string variable
    # else, simply add the character without doing anything to it
# return the new string

# def alternate_capitals(string)
#   alt_capitals = ""
#   index = 0
#   while index < string.length
#     if index % 2 != 0
#       alt_capitals += string[index].upcase
#     else
#       alt_capitals += string[index]
#     end
#     index += 1
#   end
#   alt_capitals
# end

# p alternate_capitals("hello, how are your porcupines today?")


def alternate_capitals(string)
  alt_capitals = ""
  index = 0
  while index < string.length
    if index.odd?
      alt_capitals += string[index].upcase
    else
      alt_capitals += string[index]
    end
    index += 1
  end
  alt_capitals
end

p alternate_capitals("hello, how are your porcupines today?")

