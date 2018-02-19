:this_is_a_symbol

THIS IS A HASH
 {
   key1: 'some_data',
   kay2: 'more data',
   key3: 4
 }

 user = {
   username: 'mokeefe',
   age: 30,
   name: 'lancy stryker'
 }

 user[:username]
user: username  user = { username: 'matt', age: 30, }

THIS IS A METHOD WITH KEYWORD ARGUMENTS
 def keyword_args(name:, age:)
   p name
   p age
 end

 keyword_args(name: 'okeefe', age: 30)


module User
  class EmailGenerator
  end

  class AgeFinder
  end
end


User::EmailGenerator
User::AgeFinder
