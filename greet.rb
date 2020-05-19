puts "Welcome user"
user = gets.chomp

return user.upcase if user.chr == "S"
return "Hi, #{user}"
