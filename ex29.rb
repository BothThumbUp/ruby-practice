people = 20
cats = 30
dogs = 15


if people < cats
  puts "Too many cats."
end

if people > cats
  puts "Not enough cats."
end

if people < dogs
  puts "Too many dogs."
end

if people > dogs
  puts "Not enough dogs."
end

dogs += 5

if people >= dogs
  puts "People are greater than or equal to dogs."
end

if people <= dogs
  puts "People are less than or equal to dogs."
end


if people == dogs
  puts "People are dogs."
end
