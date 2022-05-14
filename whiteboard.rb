# Write a function that reverses a string

# Input: "Dog"
# Output: "goD"

# Input: "cat"
# Output: "tac"

# def reverse_string(string)
#   reverse = ""
#   index = string.length - 1
#   while index >= 0
#     reverse << string[index].downcase
#     index -= 1
#   end
#   reverse
# end

# p reverse_string("cat") == "tac"
# p reverse_string("Dog") == "god"



# Write a function that takes in an array of numbers and returns the product of all the numbers (each number multiplied by each other).

# input: [1, 2, 3, 4, 10]
# output: 240

def product(array)
  product_so_far = 1
  array.each do |num|
    product_so_far *= num
  end
  product_so_far
end

p product([1, 2, 3, 4, 10])

