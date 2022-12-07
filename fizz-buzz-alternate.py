# write a program that prints all the numbers between 2000 and 3200 inclusive that are divisible by 7 but not divisible by 5. Each number should be separted by a comma and space

nums = []
i = 2000
while i <= 3200:
    if (i % 7 == 0) & (i % 5 != 0):
        nums.append(i)
    i += 1
print(", ".join(str(num) for num in nums))
