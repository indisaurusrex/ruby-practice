puts "What's your move Player 1?"
  p1 = gets.chomp
puts "What's your move Player 2?"
  p2 = gets.chomp


  if p1 == "rock" && p2 == "scissors" || p1 == "paper" && p2 == "rock" || p1 == "scissors" && p2 == "paper"
    puts "Player 1 wins"
  elsif p1 == p2
    puts "It's a draw"
  else
    puts "Player 2 wins"
  end
  
