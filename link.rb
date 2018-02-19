def beginning
  p "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
  p "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
  p "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
  p "You wake up hungover in the shrine of resurrection"
  p "A voice appears and tells you that zelda is in trouble and needs your help."
  p "Do you 'accept' or 'reject' the quest?"

  print "> "
  answer = $stdin.gets.chomp

  if answer == "accept"
    accept_quest
  elsif answer == "reject"
    reject_quest
  else
    atlantic_city
  end
end


def accept_quest
  p "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
  p "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
  p "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
  p "Wow, how heroic."
  p "So, what's the next move?"
  p "Are you going to 'prepare first' or 'just wing it'?"

  print "> "
  answer = $stdin.gets.chomp

  if answer == "prepare first"
    prepare_first
  elsif answer == "just wing it"
    just_wing_it
  else
    atlantic_city
  end
end


def prepare_first
  p "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
  p "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
  p "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
  p "Good idea."
  p "Where should you start looking for stuff?"
  p "'left' or 'right'?"

  print "> "
  answer = $stdin.gets.chomp

  if answer == "left"
    find_sword
  elsif answer == "right"
    p "Oh shit you looked right into the sun and got blinded to death."
    game_over
  else
    atlantic_city
  end
end


def find_sword
  p "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
  p "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
  p "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
  p "Hey look a sword!"
  p "You pick up the sword."
  p "It's a nice sword!"
  p "Alright, that's probably all you need."
  p "Oh wow, you already killed Canondort and saved queen zeldu??"
  p "I guess you win, cool."

  you_win
end


def you_win
  p "YOU WIN YOU WIN YOU WIN YOU WIN YOU WIN YOU WIN YOU WIN YOU WIN YOU WIN YOU WIN YOU WIN YOU WIN YOU WIN"
end


def reject_quest
  p "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
  p "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
  p "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
  p "Well, you didn't accept the quest and ended up eating something poisoness."
  p "So you died, cuck."
  game_over
  exit(0)
end


def atlantic_city
  p "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
  p "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
  p "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
  p "You know what, fuck it."
  p "You are pretty hungover."
  p "Plus, I bet zelda probably deserved whatever is happening."
  p "Better pack up and head to Atlantic City"
  alt_ending
  exit(0)
end


def game_over
  p "GAME OVER."
  p "Play again? 'yes' or 'no'"

  print "> "
  restart = $stdin.gets.chomp

  if restart == "yes"
    beginning
  elsif restart == "no"
    exit(0)
  end
end


def alt_ending
  p "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
  p "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
  p "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
  p "YOU HIT IT BIG IN ATLANTIC CITY."
  p "WAY TO GO."
end


beginning
