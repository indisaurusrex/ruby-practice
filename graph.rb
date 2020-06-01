input = 0
numbers = []
lines = []

# ask for input
puts "Tell me your totally graphical numbers..."
# save the input as a list
input = gets.chomp

# split the input by , and add to an array
numbers = input.split(",")


numbers.each do |num|
  lines.push(num.to_i)
end

while lines.length > 0 do
  lines[0].times { print "-" }
  print "\n"
  lines.delete_at(0)
end
