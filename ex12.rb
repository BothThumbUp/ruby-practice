=begin
print "Give me a number: "
number = gets.chomp.to_f

bigger = number * 100
puts "A bigger number is #{bigger}."

print "Give me another number: "
another = gets.chomp
number = another.to_i

smaller = number / 100
puts "A smaller number is #{smaller}."
=end

print "Give me some money: "
money = gets.chomp.to_f
change = money * 0.10
# this will take input (103.4) and output 10% back and round to 2 decimal places
puts change.round(2)
