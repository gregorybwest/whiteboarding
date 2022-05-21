# Write a function that takes in two strings and returns the longest common substring.

# Input: "together", "bothersome"
# Output: "ther"

# keep track of the longest substring so far, starting with emtpy string
# keep track of the length of longest subtring so far
# keep track of current matching letter streak 
# loop through the first string
#   nested loop through the second string
#     if the letters are equal, put that letter into longest substring so far, and increment matching letter streak by 1. 
#       if matching letter streak is greater than longest subtring so far, set longest substring so far equal to matching letter streak
#     Otherwise reset matching letter streak to 0
# return longest substring so far

def longest_common_substring(string1, string2)
  current_substring = ""
  longest_substring_so_far = ""
  current_matching_streak = 0
  string1.each_char do |letter|
    string2.each_char do |letter2|
      if letter == letter2
        current_substring += letter
        current_matching_streak += 1
        if current_matching_streak >= longest_substring_so_far.length
          longest_substring_so_far = current_substring
          puts longest_substring_so_far
        end
      else 
        current_matching_streak = 0 
      end
    end
  end
  return longest_substring_so_far
end

p longest_common_substring("together", "bothersome")