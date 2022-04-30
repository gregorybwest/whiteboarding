# Given a string, write a function to check if it is a permutation of a palindrome.
# A palindrome is a word or phrase that is the same forward and backwards.  A permutation
# is a rearrangement of letters.  The palindrome does not need to be limited to just dictionary words.
# You can ignore casing and non-letter characters.
#
# "Tact Coa" (taco cat) => true
# "" => false
# "d" => true
# "dd" => true
# "da" => false
# "abc" => false
# "abcd" => false
# "aaaa" => true
# "dda" => true
# "daad" => true
# "dDa22!!" => true
# "bobs" => false

# if we haven't gotten passed an empty string and
# no more than one alphabetical character shows up an odd number of times,
# then the string is a permutation of a palindrome

# helper method 
def letter?(lookAhead)
  lookAhead.match?(/[[:alpha:]]/)
end

def palindrome_permutation?(string)
  # if argument is not string datatype, raise exception

  # if string is empty, return false
  if string.length == 0
    return false
  end

  # create an empty hash that stores occurences of each letter
  letter_count_hash = {}

  # loop through the string
  index = 0
  while index < string.length
    char = string[index].downcase
    # if character is alphabetical
    if letter?(char)
      # if we've haven't seen this letter, add it to the hash set to count 1
      if !letter_count_hash.has_key?(char)
        letter_count_hash[char] = 1
      # if we have seen this letter, increase count by 1
      else
        letter_count_hash[char] += 1
      end
    end
    index += 1
  end

  # set a variable that stores the amount of odd letters
  odd_letter_count = 0

  # loop through values of the hash
  letter_count_hash.each_value do |value|
    # if we find an odd value, increase odd letter counter by 1
    if value.odd?
      odd_letter_count += 1
    end
    # if odd letter counter is greater than 1, return false
    if odd_letter_count > 1
      return false
    end
  end

  true
end

p palindrome_permutation?("") == false
p palindrome_permutation?("d") == true
p palindrome_permutation?("dd") == true
p palindrome_permutation?("da") == false
p palindrome_permutation?("abc") == false
p palindrome_permutation?("abcd") == false
p palindrome_permutation?("aaaa") == true
p palindrome_permutation?("dda") == true
p palindrome_permutation?("daad") == true
p palindrome_permutation?("dDa!!!22") == true
p palindrome_permutation?("bobs") == false

