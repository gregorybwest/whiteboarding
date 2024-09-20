def add_percent_20(event_name)
  new_name = []
  event_name.each_char do |char|
    if char != " "
      new_name << char
    else 
      new_name << "%20"
    end
  end
  return new_name.join()
end

puts add_percent_20("Rodeo All Star

")