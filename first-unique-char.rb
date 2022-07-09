# Given a string, find the first non-repeating character in it and return its index. If it doesn't exist, return -1.

# NOTE: You must accomplish this in O(n) time. This is also known as linear time.

# input: "leetcode"
# output: 0

# input: "loveleetcode"
# output: 2

# Note: You may assume the string contain only lowercase letters.

# loop through the letters of the input 
  # if the letter exists as a key of a hash, iterate value of hash by one
  # if the letter doesn't exist in the hash, set the letter to the key with a value of 1


def first_non_repeating_letter(string)
  letter_hash = {}
  string.each_char do |letter|
    if letter_hash[letter]
      letter_hash[letter] += 1
    else
      letter_hash[letter] = 1
    end
  end
  letter_hash.each do |key, value|
    if value == 1
      return key
    end
  end
end


p first_non_repeating_letter("leetcode") 
p first_non_repeating_letter("loveleetcode")