# Function Description

# Complete the countApplesAndOranges function in the editor below. It should print the number of apples and oranges that land on Sam's house, each on a separate line.

# countApplesAndOranges has the following parameter(s):

# s: integer, starting point of Sam's house location.
# t: integer, ending location of Sam's house location.
# a: integer, location of the Apple tree.
# b: integer, location of the Orange tree.
# apples: integer array, distances at which each apple falls from the tree.
# oranges: integer array, distances at which each orange falls from the tree.

# create empty apple location array that will store location of apple after falling
# create empty orange location array that will store location of orange after falling
# create counter for apples that fall on house, set to 0
# create counter for oranges that fall on house, set to 0
# loop through apples, adding location "a" to each distance fallen, add result to apple location array
# loop through oranges, adding location "b" to each distance fallen, add result to orange location array




def count_apples_and_oranges(s, t, a, b, apples, oranges)
  apple_counter = 0
  orange_counter = 0
  apples.each do |apple|
    if a + apple >= s && a + apple <= t
      apple_counter += 1
    end
  end
  oranges.each do |orange|
    if b + orange >= s && b + orange <= t
      orange_counter += 1
    end
  end
  p apple_counter
  p orange_counter
end


count_apples_and_oranges(7, 11, 5, 15, [-2, 2, 1], [5, -6])