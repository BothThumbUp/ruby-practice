names = ["matt", "john", "ally", "linda", "becky"]

names.each do |name|
  p name.capitalize.split("").reverse.join
end

names.each {|name| p name.capitalize.split('').reverse.join}
