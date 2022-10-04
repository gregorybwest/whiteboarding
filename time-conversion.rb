# Given a time in 12-hour AM/PM format, convert it to military (24-hour) time.

# Note: - 12:00:00AM on a 12-hour clock is 00:00:00 on a 24-hour clock.
# - 12:00:00PM on a 12-hour clock is 12:00:00 on a 24-hour clock.

def time_conversion(s)
  time_array = s.split("")
  hours = (time_array[0] + time_array[1]).to_i
  if time_array[-2] == "P" && hours < 12
    hours += 12
  elsif time_array[-2] == "A" && hours < 10
    hours = "0" + hours.to_s
  elsif time_array[-2] == "A" && hours == 12
    hours = "00"
  end
  2.times do
    time_array.shift
    time_array.pop
  end
  (hours.to_s.split("") + time_array).join
end

p time_conversion("12:05:45AM")
p time_conversion("01:05:45AM")
p time_conversion("12:05:45PM")
p time_conversion("09:05:45PM")
p time_conversion("11:05:45AM")
p time_conversion("04:59:59AM")
