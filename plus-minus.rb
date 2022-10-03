# Given an array of integers, calculate the ratios of its elements that are positive, negative, and zero. Print the decimal value of each fraction on a new line with 6 places after the decimal.

def plus_minus(arr)
  positive_nums = 0
  zero_nums = 0
  negative_nums = 0
  arr.each do |num|
    if num > 0
      positive_nums += 1
    elsif num == 0
      zero_nums += 1
    else
      negative_nums += 1
    end
  end
  puts (positive_nums.to_f / arr.length).round(6)
  puts (negative_nums.to_f / arr.length).round(6)
  puts (zero_nums.to_f / arr.length).round(6)
end

plus_minus([1, 1, 0, -1, -1])
plus_minus([-4, 3, -9, 0, 4, 1])