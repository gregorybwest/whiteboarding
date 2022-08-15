# write a function that takes in a number, n, and returns the nth number in the triangular numbers sequence (1, 3, 6, 10, 15, 21, 28, 36...)

def triangular_number(n)
  return 1 if n == 1
  return n + triangular_number(n - 1)
end

p triangular_number(4) == 10 
p triangular_number(5) == 15
p triangular_number(6) == 21
p triangular_number(7) == 28
