# Given a string text, you want to use the characters of text to form as many instances of the word "balloon" as possible.

# You can use each character in text at most once. Return the maximum number of instances that can be formed.

# Input: "bxaxlxlocovn"
# Output: 1

# Input: "bxaxlxlocovnbxaxlxlocovn"
# Output: 2

# Input: "hello"
# Output: 0

# loop through the string, if we find a letter in "balloon"
  # set the count to 1 if it's the first time we've seen the letter
  # otherwise increment the counter
# divide "o" and "l" values by 2
# return the minimum value from the hash

# def balloon_counter(string)
#   balloon_hash = {
#     "b" => 0,
#     "a" => 0,
#     "l" => 0, 
#     "o" => 0,
#     "n" => 0 
#   }
#   string.each_char do |char|
#     if balloon_hash[char]
#       balloon_hash[char] += 1
#     end
#   end
#   return balloon_hash.values.min
# end




def balloon_counter(string)
  [string.count("b"), string.count("a"), string.count("l"), string.count("o"), string.count("n")].min
end

p balloon_counter("bxaxlxlocovn") == 1
p balloon_counter("nlaebolko") == 1
p balloon_counter("bxaxlxlocovnbxaxlxlocovn") == 2
p balloon_counter("loonbalxballpoon") == 2
p balloon_counter("hello") == 0