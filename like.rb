# ask for sport or fruit
# take input
# ask for a value
# take a value
# puts the names of the people who like that value
people = [
  { "name" => "Mary", "sport" => "squash", "fruit" => "blackberry" },
  { "name" => "Lauren", "sport" => "squash", "fruit" => "orange" },
  { "name" => "Isla", "sport" => "weightlifting", "fruit" => "banana" },
  { "name" => "Sam", "sport" => "cycling", "fruit" => "orange" },
  { "name" => "Govind", "sport" => "squash", "fruit" => "banana" },
  { "name" => "Awad", "sport" => "weightlifting", "fruit" => "kiwi" },
  { "name" => "Will", "sport" => "cycling", "fruit" => "blackberry" }
]

sports_people = {}
fruit_people = {}

people.each do |person|
  sport = person["sport"]
  fruit = person["fruit"]

  if sports_people[sport] == nil
    sports_people[sport] = []
  end

  sports_people[sport].push(person["name"])

  if fruit_people[fruit] == nil
    fruit_people[fruit] = []
  end

  fruit_people[fruit].push(person["name"])
end

puts "fruit or sport?"
cat = gets.chomp
puts "which one?"
value = gets.chomp

if cat == "fruit" && fruit_people.include?(value)
  puts fruit_people[value]
elsif cat == "sport" && sports_people.include?(value)
  puts sports_people[value]
else
  puts "nobody likes #{value}"
end
