def change(num)
  change = [] 
  
  if num >= 25
    (num / 25).times do
      change << 25
      num -= 25
    end
  end
  
  if num >= 10
    (num / 10).times do
      change << 10
      num -= 10
    end
  end
  
  if num >= 5 
    change << 5
    num -= 5
  end
  
  if num <= 4
    num.times do
      change << 1
    end
  end

  return change
end

p change(100) == [25, 25, 25, 25]