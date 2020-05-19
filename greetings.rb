=begin
I hate my mate Steve: so much so that my hatred spills over to anyone with a first name beginning with 'S'. I want a program that, when anyone types their name in, shouts at them if their name begins with an 'S'. Anyone else should just get a friendly greeting.
=end

# get name
# find out if first letter of name is S
# if yes, return all caps name
# if no, return Hi capitalized name

puts "What's your name?"
name = String.new(gets.chomp!.downcase)

if name[0] == "s"
  puts "#{name.upcase}!!"
else
  puts "Hi, #{name.capitalize}"
end
