# Write a function that takes in an array of strings and returns all the pairs of strings that have a total length of 8 characters.

# input: ["hello", "goodbye", "why", "homes"]
# output: [["hello", "why"], ["why", "hello"], ["why", "homes"], ["homes", "why"]]

# create an empty array that will contain pairs of string that add up to 8
# loop through the array of string
  # for each string, loop through all the other strings
    # if the length of the two strings added together is equal to 8, add an array containing that pair of strings to a new array

  
def eight_words(words)
  two_words = []
  index = 0
  while index < words.length
    index2 = 0
    while index2 < words.length
      if index != index2
        if words[index].length + words[index2].length == 8
          two_words << [words[index], words[index2]]
        end
      end
      index2 += 1
    end
    index += 1
  end
  two_words
end

p eight_words(["hello", "goodbye", "why", "homes"]) == [["hello", "why"], ["why", "hello"], ["why", "homes"], ["homes", "why"]]