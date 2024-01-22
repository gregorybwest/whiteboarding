# iterate through each char of a string
  # if you find a number that is followed by the word "hours", store that number in an array
# find the sum of the array

def work_hours(work_log)
  hours = []
  index = 0
  while index < work_log.length
    if work_log[index] == "h" && work_log[index + 1] == "o" && work_log[index + 2] == "u" && work_log[index + 3] == "r" && work_log[index + 4] == "s"
      if work_log[index - 3].to_i > 0
        hours << (work_log[index - 3] + work_log[index - 3]).to_i
      else
        hours << work_log[index - 2].to_i
      end
      
    end
    index += 1
  end
  hours.sum
end

puts work_hours("")