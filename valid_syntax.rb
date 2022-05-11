# Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

# An input string is valid if:

# Open brackets must be closed by the same type of brackets.
# Open brackets must be closed in the correct order.

# Input: "()[]{}"
# Output: True

# Input: "([]{}"
# Output: False

# Input: "([{])}"
# Output: False

# Input: "([{}])"
# Output: True


# Write a function that takes in a string as an arugment 
# Create an empty stack 
# Create a hash of brackets with open bracket as key and matching closed bracket as value
# Loop through the string 
  # if we encounter a key from the bracket hash (an open bracket), push it onto the stack
  # if we encounter a value from the bracket hash, check if the last item on the stack is the hash key that points to its value
  # otherwise, return false
# if we get to the end of the loop, check if the stack is empty, if it is, return true

def valid_syntax(s)
  stack = []

  bracket_hash = {
    "(" => ")", 
    "[" => "]",
    "{" => "}"
  }

  s.each_char do |char|
    if bracket_hash[char]
      stack << char
    elsif char == bracket_hash[stack.last]
      stack.pop
    else
      return false
    end
  end
  stack.empty?
end

p valid_syntax("()[]{}") # ==> true
p valid_syntax("([]{}")  # ==> false
p valid_syntax("([{])}") # ==> false
p valid_syntax("([{}])") # ==> true









