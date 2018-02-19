=begin
user_name = ARGV.first # gets the first argument
prompt = '> '

puts "Hi #{user_name}."
puts "I'd like to ask you a few questions."
puts "Do you like me #{user_name}? "
print prompt
likes = $stdin.gets.chomp

puts "Where do you live #{user_name}? "
print prompt
lives = $stdin.gets.chomp

# a comma for puts is like using it twice
puts "What kind of computer do you have? "
print prompt
computer = $stdin.gets.chomp

puts """
Alright, so you said #{likes} about liking me.
You live in #{lives}. Not sure where that is.
And you have a #{computer}. Nice.
"""
=end

user_first_name, user_second_name = ARGV
prompt = '> '

puts "Hi #{user_first_name}."
puts "I'd like to ask you a few questions."
puts "Do you like me #{user_first_name}? "
print prompt
likes = $stdin.gets.chomp

puts "Where do you live #{user_second_name}? "
print prompt
lives = $stdin.gets.chomp

# a comma for puts is like using it twice
puts "What kind of computer do you have? "
print prompt
computer = $stdin.gets.chomp

puts """
Alright, #{user_first_name}, so you said #{likes} about liking me.
You live in #{lives}. Not sure where that is.
And you have a #{computer}. Nice.
"""
