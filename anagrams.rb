# Given two strings, return true if they are anagrams of each other, and false if they are not. An anagram is a word, phrase, or name formed by rearranging the letters of another, such as cinema, formed from iceman.

# Do not use any built-in sort methods.

# Input: “silent”, “listen”
# Output: true

# Input: “frog”, “bear”
# Output: false

# write a function that takes 2 strings as arguments
# create an empty hash to store the letters and letter count of the strings
# loop through each character of the first word
  # if the letter exists, increment the value by one
  # otherwise, set the key with a value of 1
# loop through the second word
  # if the letter exists in the hash, decrement the value by 1
  # if the letter doesn't exist, return false
# check that all the values of the keys in the hash are 0. if yes, return true, otherwise return false

def anagrams(string1, string2)
  letter_count = {}
  string1.each_char do |char|
    if letter_count[char]
      letter_count[char] += 1
    else
      letter_count[char] = 1
    end
  end
  string2.each_char do |char2|
    if letter_count[char2]
      letter_count[char2] -= 1
    else
      return false
    end
  end
  # check that all the values in the hash are 0 
  letter_counts_array = letter_count.values
  letter_counts_array.each do |count|
    if count != 0 
      return false
    end
  end
  return true
  
end

p anagrams("silent", "listen") # ==> true
p anagrams("frog", "bear")     # ==> false