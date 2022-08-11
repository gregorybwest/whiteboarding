# A given string contains all the letters from the alphabet except for one. Return the missing letter.

# NOTE: You must accomplish this in O(n) time. This is also known as linear time.

# Input: “The quick brown box jumps over a lazy dog”
# Output: “f”

# def missing_letter(string)
#   alphabet = {
#     "a" => 0, "b" => 0, "c" => 0, "d" => 0, "e" => 0, "f" => 0, "g" => 0, "h" => 0, "i" => 0, "j" => 0, "k" => 0, "l" => 0, "m" => 0, "n" => 0, "o" => 0, "p" => 0, "q" => 0, "r" => 0, "s" => 0, "t" => 0, "u" => 0, "v" => 0, "w" => 0, "x" => 0, "y" => 0, "z" => 0
#   }
#   string.each_char do |letter|
#     if letter != " "
#       alphabet[letter.downcase] += 1
#     end
#   end
#   alphabet.each do |key, value|
#     if value == 0
#       return key
#     end
#   end
# end

# p missing_letter("The quick brown box jumps over a lazy dog")
# p missing_letter("The QUICK brown box jumps OVER a lazy DOG")

def missing_letter(string)
  # store all encountered letter in a hash table
  letter_hash = {}
  string.each_char do |letter|
    letter_hash[letter] = true
  end
  # return first unseen letter
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  alphabet.each_char do |letter|
    if !letter_hash[letter]
      return letter
    end
  end
end

p missing_letter("The quick brown box jumps over a lazy dog") == "f" # true

