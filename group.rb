x = 0
name = String.new
input = String.new

puts "How many groups would you like?"
n = gets.chomp.to_i
groups = Array.new(n) { Array.new }

while true do
  puts "who do you want to add?"
  name = gets.chomp

  if name == "stop"
    break
  else
    groups[x].push(name)
    if x == n - 1
      x = 0
    else
      x += 1
    end
  end
end

while true do
  puts "Which group would you like to see?"
  input = gets.chomp

  if input == "stop"
    break
  else
    y = input.to_i - 1
    puts groups[y].join(", ")
  end
end
