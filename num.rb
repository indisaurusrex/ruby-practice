num_1 = 0
num_2 = 0

while true do
   puts "Give me a number"
   num_2 = gets.chomp

   if num_2 == "stop"
     puts num_1
     break
   else
     num_1 = num_1.to_i + num_2.to_i
   end
end
