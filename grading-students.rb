# Every student receives a grade in the inclusive range from 0 to 100.
# Any  less than 40 is a failing grade.
# If the difference between the grade and the next multiple of  is less than , round grade up to the next multiple of 5.
# If the value of grade is less than 38, no rounding occurs as the result will still be a failing grade.

# create an empty array that will store rounded grade
# loop through grades, and for each grade
  # if the grade is lower than 38, don't change it, add it to rounded_numbers
  # if the grade ends in 8 or 9, round it to the nearest 10, add it to rounded_numbers
  # else, add to rounded_numbers

def grading_students(grades)
  rounded_numbers = []
  grades.each do |grade|
    grade_array = grade.to_s.split("")
    second_num = grade_array[1]
    if grade_array.join.to_i < 38
      rounded_numbers << grade_array.join.to_i
    elsif second_num == "8" || second_num == "9" || second_num == "4" || second_num == "3"
      rounded_numbers << (grade_array.join.to_i / 5.0).ceil * 5
    else
      rounded_numbers << grade_array.join.to_i
    end
  
  end
  rounded_numbers

end

puts grading_students([12, 98, 87, 38, 29, 73, 64])