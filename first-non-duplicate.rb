# Write a function that returns the first non-duplicated character in a string

def first_non_duplicate(string)
  letter_hash = {}
  string.each_char do |char|
    if letter_hash[char]
      letter_hash[char] += 1
    else
      letter_hash[char] = 1
    end
  end
  letter_hash.each do |key, value|
    if value == 1
      return key
    end
  end
end

p first_non_duplicate("minimum") == "n" # true