# https://www.hackerrank.com/challenges/two-characters/problem

def valid_string?(s)
  index = 0
  while index < s.length - 1
    if s[index] == s[index + 1]
      return false
    end
    index += 1
  end
  return true
end

def char_pairs(s)
  index = 0
  letter_hash = {}
  s.each_char do |letter|
    if !letter_hash[letter]
      letter_hash[letter] = 1
    else
      letter_hash[letter] += 1
    end
  end
  pairs_array = []
  index = 0
  while index < letter_hash.keys.length - 1
    index2 = index + 1
    while index2 < letter_hash.keys.length
      pairs_array << [letter_hash.keys[index], letter_hash.keys[index2]]
      index2 += 1
    end
    index += 1
  end
  
  two_letter_strings = []
  pairs_array.each do |pair|
    temp_word = "" 
    s.each_char do |letter|
      if letter == pair[0] || letter == pair[1]
        temp_word << letter
      end
    end
    two_letter_strings << temp_word
  end

  valid_strings = []
  two_letter_strings.each do |string|
    if valid_string?(string)
      valid_strings << string
    end
  end
  final_string = ""
  valid_strings.each do |string|
    if string.length > final_string.length
      final_string = string
    end
  end
  final_string.length

end

p char_pairs("beabeefeab") == 5
p char_pairs("asdcbsdcagfsdbgdfanfghbsfdab") == 8
p char_pairs("asvkugfiugsalddlasguifgukvsa") == 0

