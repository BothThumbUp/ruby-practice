# this opens the script with the file you want to open
filename = ARGV.first
# this creates the variable txt and commands it to open by calling the open method on it
txt = open(filename)
close = close(filename)
# this puts the string
puts "here's your file #{filename}: "
# this calls the "read" method on the variable txt
print txt.read
# this prints the string
 print "type your filename again: "
# this requires input from the user during the script, requests the filename, then assigns it to the variable file_again
file_again = $stdin.gets.chomp
# this calls the open command on the variable file_again and assigns that to new variable
 txt_again = open(file_again)
# calls the read method on the variable
print txt_again.read
