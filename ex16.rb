filename = ARGV.first

puts "we're going to erase #{filename}"
puts "if you don't want that, hit CTRL-C (^C)."
puts "if you do want that, hit RETURN."

$stdin.gets

puts "opening the file..."
target = open(filename, 'w')
txt = open(filename)

puts "truncating the file. bye bye!"
target.truncate(0)

puts "now i'm going to ask you for three lines."

print "line 1: "
line1 = $stdin.gets.chomp
print "line 2: "
line2 = $stdin.gets.chomp
print "line 3: "
line3 = $stdin.gets.chomp

puts "i'm going to write these to the file"

=begin
target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")
=end

target.write(line1, "\n", line2, "\n", line3, "\n")

puts "and finally, we close it"
target.close

puts "but we can still read the contents again."
puts txt.read
