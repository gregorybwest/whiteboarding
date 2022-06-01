# Please write a function that, given two strings, returns
# the longest common prefix between the strings.
# 
# For example:
# CAT, CAR => "CA"
# LOG, LOCK => "LO"
# BABY, PARTY => ""
# CAT, CAT => "CAT"
# CAT, CATER => "CAT"
# 123, None => raise exception

# Write a function that takes in two strings as arguments
# Set a variable to an empty string that will store the letter or letters of the common prefix of two strings
# Set index to 0 to keep track of the first letter of each string
# While the two strings have equal characters starting from the first character of each string
  # If the letter at the current index for string 1 is equal to the letter at the current index of string 2, add that letter to common_prefix string
  # Else, break
# Return common_prefix string


def longest_common_prefix(string1, string2)
  common_prefix = ""
  index = 0
  while string1[index] == string2[index]
    common_prefix += string1[index]
    index += 1
  end
  common_prefix
end

p longest_common_prefix("CAT", "CAR")
p longest_common_prefix("LOG", "LOCK")
p longest_common_prefix("CAT", "CATER")
p longest_common_prefix("BABY", "PARTY")