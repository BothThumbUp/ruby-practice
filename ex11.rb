=begin
print "How old are you? "
age = gets.chomp
print "How tall are you? "
height = gets.chomp
print "How much do you weigh? "
weight = gets.chomp
puts "So, you're #{age} old, #{height} tall, and #{weight} heavy."


print "How old are you? "
age = gets.chomp.to_i
print "How tall are you? "
height = gets.chomp
print "How much do you weigh? "
weight = gets.chomp

puts "So, you're #{age} old, #{height} tall, and #{weight} heavy."
=end

print "What is the capital of California? "
capital = gets.chomp

if capital == "Sacremento" || "sacremento"
  puts "correct"
else
  puts "incorrect"
end
