# Given a year, report if it is a leap year.

# The tricky thing here is that a leap year in the Gregorian calendar occurs:

# on every year that is evenly divisible by 4
# except every year that is evenly divisible by 100
# unless the year is also evenly divisible by 400
# For example, 1997 is not a leap year, but 1996 is. 1900 is not a leap year, but 2000 is.

# If your language provides a method in the standard library that does this look-up, pretend it doesn't exist and implement it yourself.


# Write a function that takes in an integer as an argument
# If the number divided by 4, and 100, and 400 has a remainder of 0, that number is a leap year
  # Otherwise if the number divided by 4 and 100 has a remainder of 0, that number is not a leap year
  # Otherwise if the number divided by 4 has a remainder of 0, that number is a leap year
  # Else the number is not a leap year

def leap_year(year)
  if year % 4 == 0 && year % 100 == 0 && year % 400 == 0
    puts "leap year!"
  elsif year % 4 == 0 && year % 100 == 0
    puts "not leap year"
  elsif year % 4 == 0
    puts "leap year!"
  else
    puts "not leap year"
  end
end

leap_year(2020)