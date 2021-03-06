# Build on the results of our in-class exploration to output, for example:

# Give me an... A
# Give me a... B
# Give me a... B
# Give me a... Y
# ABBY’s just GRAND!
# When given the input of “Abby”.

# Note: the “a” vs. “an”

# P.S.: name.methods - Object.methods

require 'date'

puts "What's your name?"
name = gets.chomp

if name.empty?
  puts "You must enter your name!"
  exit
end

puts "Your name is #{name}"
name.upcase.each_char do |char|
  if char[0] === "A" || char[0] === "E" || char[0] === "I" || char[0] === "O" || char[0] === "U"
    article = "an"
  else
    article = "a"
  end
  puts "Give me #{article} #{char}"
end
puts "#{name.upcase}'s just GRAND!"

puts "Hey, #{name}, what's your birthday?"
birthday = gets.chomp
bdate = Date.strptime(birthday.to_s, "%m/%d/%y")

today = DateTime.now
if bdate.yday < today.yday
  bdate = Date.new(today.year + 1, bdate.month, bdate.day)
else
  bdate = Date.new(today.year, bdate.month, bdate.day)
end
daysToGo = (bdate - today).to_i + 1
puts "Awesome! Your birthday is in #{daysToGo} days! Happy birthday in advance!"
