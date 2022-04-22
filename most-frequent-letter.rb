# Write a function that returns the most frequently occurring letter in a string

# Input: "peter piper picked a peck of pickled peppers"
# Output: "p"

# Write a function
# Create an empty hash which will store the frequency of each letter's occurence
# Set a variable to 0 that stores most frequent letter count
# Set a variable to empty string that stores most frequent letter
# Loop through the string
  # If the letter is in the hash, increment the value of the key by 1
  # If the letter is not in the hash, add it to the hash with a value of 1
  # If the letter count is higher than the most frequent count
    # Set most frequent count to letter count
    # Set most frequent letter to letter
# Return frequent letter

def frequent_letter(string)
  letter_count = {}
  no_spaces_string = string.gsub(/\s+/, "")
  index = 0
  most_frequent_count = 0
  most_frequent_letter = ""
  while index < no_spaces_string.length
    if letter_count[no_spaces_string[index]]
      letter_count[no_spaces_string[index]] += 1
    else
      letter_count[no_spaces_string[index]] = 1
    end
    if letter_count[no_spaces_string[index]] > most_frequent_count
      most_frequent_count = letter_count[no_spaces_string[index]]
      most_frequent_letter = no_spaces_string[index]
    end
    index += 1
  end
  most_frequent_letter
end

p frequent_letter("peter piper picked a peck of pickled peppers") # ==> "p"
p frequent_letter("hello how are you?") # ==> "p"