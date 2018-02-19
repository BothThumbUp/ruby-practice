# assigns the string value to days
days = "Mon Tue Wed Thu Fri Sat Sun"
# assigns the string value to months. \n makes each new month pring on the next line
months = "\nJan\nFeb\nMar\nApr\nMay\nJun\nJul\nAug"

# puts the string and inserts the variable days, which contains a string
puts "Here are the days: #{days}"
# puts the string and inserts the variable months, which contains a string that prints on multi lines
puts "Here are the months: #{months}"
# looks like it puts the content in the {} as a string, but no quotes are req and it prints the content literally as its formatted

puts %q{
  There's something going on here.
  With this weird quote
  We'll be able to type as much as we like.
  Even 4 lines if we want, or 5, or 6.
}
