# https://www.hackerrank.com/challenges/reduced-string/problem

# Reduce a string of lowercase characters in range ascii[‘a’..’z’]by doing a series of operations. In each operation, select a pair of adjacent letters that match, and delete them.

# Delete as many characters as possible using this method and return the resulting string. If the final string is empty, return Empty String

def super_reduced_string(s)
  letters = s.split("")
  index = 0
  while index < letters.length - 1
    letter1 = letters[index]
    letter2 = letters[index + 1]
    if letter1 == letter2
      letters.delete_at(index)
      letters.delete_at(index)
      index = 0
    else
      index += 1
    end
  end

  if letters.length == 0
    return "Empty String"
  else
    return letters.join
  end
end


p super_reduced_string("aaabccddd") == "abd"
p super_reduced_string("aa") == "Empty String"
p super_reduced_string("baab") == "Empty String"