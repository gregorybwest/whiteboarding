def compare_triplets(a, b)
  index = 0
  a_points = 0
  b_points = 0
  while index < 3
    if a[index] > b[index]
      a_points += 1
    elsif b[index] > a[index]
      b_points += 1
    end
    index += 1
  end
  return a_points, b_points
end

p compare_triplets([17, 28, 30], [99, 16, 8])