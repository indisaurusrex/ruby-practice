=begin
The user starts by facing forward. They can move right, left, or forward. If they move right, they die (there's a goblin). If they move left, they die (there's a werewolf). If they move forward, they live. They have to do this twice to win.
=end

# Welcome, tell user they're facing forward
# Tell them they can move l/r/f
# get the users choice
# if its l tell them die from werewolf
# if its r tell them die from goblin
# if its fwd, still alive, choose again
# get input
# redo loop from above
# if its fwd again, output win message
go = 1

while true do

  puts "You're facing forward; do you go left, right, or forward?"
  user_input = gets.chomp.downcase

  if user_input == "right"
    puts "Oh no! A goblin got you, you die."
    break
  elsif user_input == "left"
    puts "Uh oh... you got bitten by a werewolf! You die."
    break
  elsif user_input == "forward"
      if go == 2
        puts "Hooray, you made it!"
        break
      end

    go += 1
  end
end
