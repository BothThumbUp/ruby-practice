name = 'Zed A. Shaw'
age = 35 # not a lie in 2009
height = 74 # inches
weight = 180 #lbs
eyes = 'Blue'
teeth = 'White'
hair = 'Brown'

centimeters = 2.54
kilograms = 0.45

height_in_centimeters = height * centimeters
weight_in_kilograms = weight * kilograms

puts "Let's talk about #{name}."
puts "He's #{height} inches tall, or #{height_in_centimeters} centimeters."
puts "He's #{weight} pounds heavy, or #{weight_in_kilograms} kilograms."
puts "Actually that's not too heavy."
puts "He's got #{eyes} eyes and #{hair} hair."
puts "His teeth are usually #{teeth} depending on the coffee."

# this line is tricky, try to get it exactly right
puts "If I add #{age}, #{height}, and #{weight} I get #{age + height + weight}."
