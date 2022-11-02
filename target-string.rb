# leetcode 2287. Rearrange Characters to Make Target String

# You are given two 0-indexed strings s and target. You can take some letters from s and rearrange them to form new strings.

# Return the maximum number of copies of target that can be formed by taking letters from s and rearranging them.

# Input: s = "ilovecodingonleetcode", target = "code"
# Output: 2
# Explanation:
# For the first copy of "code", take the letters at indices 4, 5, 6, and 7.
# For the second copy of "code", take the letters at indices 17, 18, 19, and 20.
# The strings that are formed are "ecod" and "code" which can both be rearranged into "code".
# We can make at most two copies of "code", so we return 2.
# Example 2:

# Input: s = "abcba", target = "abc"
# Output: 1
# Explanation:
# We can make one copy of "abc" by taking the letters at indices 0, 1, and 2.
# We can make at most one copy of "abc", so we return 1.
# Note that while there is an extra 'a' and 'b' at indices 3 and 4, we cannot reuse the letter 'c' at index 2, so we cannot make a second copy of "abc".
# Example 3:

# Input: s = "abbaccaddaeea", target = "aaaaa"
# Output: 1
# Explanation:
# We can make one copy of "aaaaa" by taking the letters at indices 0, 3, 6, 9, and 12.
# We can make at most one copy of "aaaaa", so we return 1.

def hash_string(string)
  string_hash = {}
  string.each_char do |char|
    if string_hash[char]
      string_hash[char] += 1
    else 
      string_hash[char] = 1
    end
  end
  return string_hash
end

def rearrange_characters(s, target)
  target_hash = hash_string(target)
  string_hash = hash_string(s)
  occurence_quotients = []
  target_hash.each do |key, value|
    if string_hash[key]
      occurence_quotients << string_hash[key] / value
    else
      return 0
    end
  end
  return occurence_quotients.min
end

puts rearrange_characters("hello hello again", "hello") == 2
puts rearrange_characters("ilovecodingonleetcode", "code") == 2
puts rearrange_characters("abcba", "abc") == 1
puts rearrange_characters("abbaccaddaeea", "aaaaa") == 1
puts rearrange_characters("abc", "abcd") == 0




