definitions = {
  :bear => "a creature that fishes in the river for salmon.",
  :river => "a body of water that contains salmon, and sometimes bears.",
  :salmon => "a fish, sometimes in a river, sometimes in a bear, and sometimes in both.",
  }

puts "which word shall we lookup? bear, river, salmon"
word = gets.chomp

puts definitions[word.to_sym]
