people = 30
cars = 40
trucks = 15

if cars > people
  p "we should take the cars."
elsif cars < people
  p "we should not take the cars."
else
  p "we can't decide."
end

if trucks > cars || people > trucks
  p "thats' too many trucks."
elsif trucks < cars
  p "maybe we should take the trucks."
else
  p "we still can't decide."
end

if people > trucks
  p "alright, let's just take the trucks."
else
  p "Fine, let's just stay home then."
end
