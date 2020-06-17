class Dice
  
  def roll(times = 1)
    output = []
    2.times { output << rand(1..6) }
    output
  end

end
