river = "-----,--C--,CC-CC,CC-CC"
water = river.split(",")
go = 0
pos = 2

while go < water.length do
  if go == water.length
    puts "You survived!"
    break
  elsif water[go][pos] == "C"
    puts "You were eaten."
    break
  else
    water[go][pos] = "P"
    puts water
    puts "Type left, right or neither"
    input = gets.chomp
    if input == "left"
      water[go][pos] = "-"
      pos -= 1
      go += 1
    elsif input == "right"
      water[go][pos] = "-"
      pos += 1
      go += 1
    else
      water[go][pos] = "-"
      go += 1
    end
  end
end
