def gold_room
  p "This room is full of gold. How much do you take?"

  print "> "
  choice = $stdin.gets.chomp

  # this line has a bug, so fix it
  if choice =~ /\d/
    how_much = choice.to_i
  else
    dead("Man, learn to type a number.")
  end

  if how_much < 50
    puts "You didn't take a lot, so you get to live. bye."
    exit(0)
  elsif how_much == 100
    trap_door
  else
    dead("you took too much and died from your greed.")
  end
end

def bear_room
  p "there is a bear here."
  p "the bear has a bunch of honey."
  p "the fat bear is in front of another door."
  p "how are you going to move the bear?"
  bear_moved = false

  while true
    print "> "
    choice = $stdin.gets.chomp

    if choice == "take honey"
      dead("The bear looks at you then slaps your face off.")
    elsif choice == "taunt bear" && !bear_moved
      p "the bear has moved from the door. you can go through it now."
      bear_moved = true
    elsif choice == "taunt bear" && bear_moved
      dead("The bear gets pissed off and chews your legs off.")
    elsif choice == "open door" && bear_moved
      gold_room
    else
      p "i have no idea what that means."
    end
  end
end


def cthulhu_room
  p "Here you see the great cthulhu."
  p "he, it, whatever stares at you and you go insane"
  p "do you flee for your life or eat your head?"

  print "> "
  choice = $stdin.gets.chomp

  if choice.include? "flee"
    start
  elsif choice.include? "head"
    dead("well that was tastey!")
  else
    cthulhu_room
  end
end

def trap_door
  p "You picked exactly 100, which triggered a trap door."
  p "you land on the ground and break your leg."
  p "sneks start crawling out of the walls and towards you."
  p "do you start to crawl, or just stay put?"

  print "> "
  choice = $stdin.gets.chomp

  if choice.include? "crawl"
    dead("you crawled into a bunch of sneks you didn't see and they bit your weiner off.")
    exit(0)
  elsif choice.include? "stay put"
    help_arrives
  else
    dead("whatever you did made your leg hurt and the sneks catch and eat you.")
  end
end

def help_arrives
  p "by staying put, the sneks can't see you and end up eating eachother. you survive long enough for help to arrive. you win."
  exit(0)
end


def dead(why)
  p why, "such a shame..."
  exit(0)
end

def start
  p "You are in a dark room."
  p "there is a door to your right and left."
  p "which one do you take?"

  print "> "
  choice = $stdin.gets.chomp

  if choice == "left"
    bear_room
  elsif choice == "right"
    cthulhu_room
  else
    dead("you stumble around the room till you starve.")
  end
end

start
