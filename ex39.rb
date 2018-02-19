states = {
  'Oregon' => 'OR',
  'Florida' => 'FL',
  'California' => 'CA',
  'New York' => 'NY',
  'Michigan' => 'MI'
}

cities = {
  'CA' => 'San Francisco',
  'MI' => 'Detroit',
  'FL' => 'Jacksonville',
}

cities['NY'] = 'New York'
cities['OR'] = 'Portland'

p '-' * 10
p "NY State has: #{cities['NY']}"
p "OR State has: #{cities['OR']}"

p '-' * 10
p "Michigan's abbreviation is: #{states['Michigan']}"
p "Florida's abbreviation is: #{states['Florida']}"

p '-' * 10
p "Michigan has: #{cities[states['Michigan']]}"
p "Florida has: #{cities[states['Florida']]}"

p '-' * 10
states.each do |state, abbrev|
  p "Here is the state #{state} and here is the abbreviation #{abbrev}."
end

p '-' * 10
cities.each do |abbrev, city|
  p "#{city} is in the state #{abbrev}."
end

p '-' * 10
states.each do |state, abbrev|
  city = cities[abbrev]
  p "#{city}, #{abbrev} is in the state #{state}."
end

p '-' * 10
state = states['Texas']

if !state
  p "Sorry, no Texas."
end

city = cities['TX']
city ||= 'Does not exist.'
p "The city for the state 'TX' is: #{city}"
