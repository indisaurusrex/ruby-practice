# Create a hash with the points using integers as the keys
# Ask for a word
# split the word into letters
# return the points for each letters
# add them together

points = {
  :"0" => [" "],
  :"1" => ["E", "A", "I", "O", "N", "R", "T", "L", "S", "U"],
  :"2" => ["D", "G"],
  :"3" => ["B", "C", "M", "P"],
  :"4" => ["F", "H", "V", "W", "Y"],
  :"5" => ["K"],
  :"8" => ["J", "X"],
  :"10" => ["Q", "Z"],
}
score = []
end_score = []

puts "What word would you like to play?"
answer = gets.chomp.split("")

points.each do |point, l_array|
  answer.each do |char|
    if l_array.include?(char)
      score.push(point)
    end
  end
end

score.each do |s|
  end_score.push(s.to_s.to_i)
end

puts end_score.sum
