# this app calculates tax

def tax(money_spent)
  money_spent * 0.10
end

print "How much money did that thing cost? "
money_spent = $stdin.gets.to_i

puts "You paid #{tax(money_spent).round(2)} in tax sucker."
puts "Los Angeles sux."
