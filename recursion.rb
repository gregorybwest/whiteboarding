# def countdown(num)
#   while num >= 0 
#     puts num
#     num -= 1
#   end
# end

# countdown(10)

def sum(low, high)
  if low > high
    return low
  end
  return high + sum(low, high - 1)
end

p sum(0, 10)

