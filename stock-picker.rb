# given an array of representing the price of a stock on a series of days, write a function that determines the best day to buy then sell.

# input: [5, 3, 6, 1, 5, 1, 3]
# output: [3, 4]

# input: [10, 9, 8, 7, 6, 5, 4]
# output: [-1, -1]

# create a variable that will store the largest price gain seen so far, set it to -1
# loop through each number in the array
  # for each number, loop through every number that appears after that number in the array
    # find the difference between the second number (sell price) and first number (buy price)
      # if that number is greater than largest_gain_so_far
        # set largest gain to that number
        # create an empty array that will store the most profitable indices so far
        # add the indices to the empty array
# if most profitable indicies array is empty, return [-1, -1], otherwise return most profitable indices array

def stock_picker(array)
  largest_gain_so_far = -1
  index = 0
  while index < array.length - 1
    index2 = index + 1
    while index2 < array.length 
      if array[index2] - array[index] > largest_gain_so_far
        largest_gain_so_far = array[index2] - array[index]
        best_indices = []
        best_indices << index
        best_indices << index2
      end
      index2 += 1
    end
    index += 1
  end
  if best_indices == nil
    return [-1, -1]
  else
    best_indices
  end
end

p stock_picker([5, 3, 6, 1, 5, 1, 3]) == [3, 4]
p stock_picker([10, 9, 8, 7, 6, 5, 4]) == [-1, -1]