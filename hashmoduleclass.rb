# hashes work like this 'key \points to\ value'. like 'age' => 29.
# modules work in a similar way like this 'module \contains this\ function. '
# like 'ThisModule.funtion()'. You use this when you're working in a file
# and you need to call a function that's defined within a different module.
# It works similar when accessing variables that are defined in another module or file.
# If I'm working in the module SecondModule and I've defined the variable TANGERINE
# in the module FirstModule, I put 'require "./mystuff.rb"' at the top of my file
# and then can call it with FirstModule::TANGERINE

# dictionary style
mystuff['apples']

# module style
MyStuff.apples()
p MyStuff::TANGERINE

# class style
thing = MyStuff.new()
thing.apples()
p thing.tangerine 
