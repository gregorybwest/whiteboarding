# Write a function that accepts and array of strings and returns the first duplicate value that it finds

def first_duplicate(array)
  letter_hash = {}
  array.each do |letter|
    if letter_hash[letter]
      return letter
    else  
      letter_hash[letter] = true
    end
  end
end

p first_duplicate(["a", "b", "c", "c", "d", "d"])