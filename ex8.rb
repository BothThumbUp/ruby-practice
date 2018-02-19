# this assigns the string to formatter
formatter = "%{first} %{second} %{third} %{fourth}"

# this puts the four values of formatter and assigns a number to each of the four
puts formatter % {first: 1, second: 2, third: 3, fourth: 4}
# this does the same thing, but puts a string for each value
puts formatter % {first: "one", second: "two", third: "three", fourth: "four"}
# this does the same thing, but prints a boolean for each value
puts formatter % {first: true, second: false, third: true, fourth: false}
# this is variable inception. I have no idea why you'd want to do this
puts formatter % {first: formatter, second: formatter, third: formatter, fourth: formatter}
# this does pretty much the same thing, but in a much neater format and prints longer strings
puts formatter % {
  first: "I had this thing.",
  second: "That you could type up right.",
  third: "But it didn't sing.",
  fourth: "So I said goodnight."
}
# the strings above print one after the other without line breaks
