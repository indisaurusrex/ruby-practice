position = 1
# 1 = Passage
# 2 = cave
# 3 = outside

while true do
  user_input = gets.chomp

  if user_input == "north"
    if position == 1
      puts "You are in a scary cave."
      position += 1
    elsif position == 2
      puts "You walk into sunlight."
      break
    end
  elsif user_input == "south"
    if position == 2
      puts "You are in a scary passage."
      position -= 1
    end

  end
end
