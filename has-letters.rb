# // Write a function named hasLetters() that receives a string and an Array of letters and returns TRUE if the string contains all of the letters in the array

def has_letters(string, array)
  letter_hash = {}
  string.each_char do |letter|
    if letter_hash[letter] 
      letter_hash[letter] += 1
    else
      letter_hash[letter] = 1
    end
  end
  array.each do |letter|
    if letter_hash[letter]
      letter_hash[letter] -= 1
      if letter_hash[letter] < 0 
        return false
      end
    else
      return false
    end
  end
  return true

end


p has_letters("hello", ["h", "e", "l", "l", "o"]) == true
p has_letters("hellllo", ["h", "e", "l", "l", "o"]) == true
p has_letters("hello", ["h", "e", "l", "l", "o", "f"]) == false
p has_letters("hello", ["h", "e", "l", "l", "o", "o"]) == false