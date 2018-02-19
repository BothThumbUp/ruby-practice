ten_things = "Apples Oranges Crows Telephone Light Sugar"

p "Wait there are not ten things are there? #{ten_things}: #{ten_things.length}"

stuff = ten_things.split(' ')
more_stuff = ["Day", "Night", "Song", "Frisbee", "Corn", "Banana", "Girl", "Boy"]

while stuff.length != 10
  more = more_stuff.pop
  p "Adding: #{more}"
  stuff.push(more)
  p "Stuff now contains: #{stuff.length} items"
end

BEGIN { p "The script has started."}
ensure
END { p "The script has ended."}

p "Hello" and "Goodbye"
