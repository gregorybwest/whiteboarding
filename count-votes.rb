# Given an array of strings, return a hash that provides of a count of how many times each string occurs.

# Input: ["Dewey", "Truman", "Dewey", "Dewey", "Truman", "Truman", "Dewey", "Truman", "Truman", "Dewey", "Dewey"]

# Output: {"Dewey" => 6, "Truman" => 5}

# Explanation: "Dewey" occurs 6 times in the array, while "Truman" occurs 5 times.

# Write a function
# Create an empty hash that will store names as keys and number of occurrences in array as values
# Loop through the array
  # If the string is in the hash, increment value in the hash by one
  # If not in the hash, add it to the hash and set the value to 1
# Return the hash

def count_votes(votes_array)
  votes_hash = {}
  votes_array.each do |vote|
    if votes_hash[vote]
      votes_hash[vote] += 1
    else
      votes_hash[vote] = 1
    end
  end
  votes_hash
end

p count_votes(["Dewey", "Truman", "Dewey", "Dewey", "Truman", "Truman", "Dewey", "Truman", "Truman", "Dewey", "Dewey"])