# Build on the results of our in-class exploration to output, for example:

# Give me an... A
# Give me a... B
# Give me a... B
# Give me a... Y
# ABBY’s just GRAND!
# When given the input of “Abby”.

# Note: the “a” vs. “an”

# P.S.: name.methods - Object.methods

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
