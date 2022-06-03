# Write a function that takes in two strings and returns a new string with the letters of the two strings shuffled together one after another.

# input: "hello", "goodbye"
# output: "hgeololdobye"

# loop through the first string and the second string
#   if character at index is not  nil
#     print the letter from the first string
#     print the letter from the second string
#   increment the index

def alternating_letters(string1, string2)
  alternating_word = ""
  longer_string = ""
  if string1.length > string2.length
    longer_string = string1
  else
    longer_string = string2
  end
  index = 0
  while index < longer_string.length
    if string1[index] != nil
      alternating_word += string1[index]
    end
    if string2[index] != nil
      alternating_word += string2[index]
    end
    index += 1
  end
  alternating_word
end

p alternating_letters("hello", "goodbye") == "hgeololdobye"
p alternating_letters("batman", "superman") == "bsautpmearnman"
