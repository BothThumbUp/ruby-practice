## Animal is-a object
class Animal
end

# Dog is-a Animal
class Dog < Animal

  def initialize(name)
    # Dog has-a initialize that takes name parameters.
    @name = name
  end

end

# Cat is-a Animal
class Cat < Animal

  def initialize(name)
    # Cat has-a name.
    @name = name
  end

end

# Person is-a object.
class Person

  def initialize(name)
    # Person has-a name.
    @name = name

    # Person has-a pet of some kind.
    @pet = pet
  end

  attr_accessor :pet
end

# Employee is-a Person
class Employee < Person

  def initialize(name, salary)
    # Employee has-a attribute name that was given upon instantiation.
    super(name)
    # Employee has-a salary.
    @salary = salary
  end

end

# Fish is-a object
class Fish
end

# Salmon is-a Salmon
class Salmon < Fish
end

# Halibut is-a Fish
class Halibut < Fish
end

# rover is-a Dog
rover = Dog.new("Rover")

# satan is-a Cat
satan = Cat.new("Satan")

# mary is-a Person
mary = Person.new("Mary")

# mary has-a pet that is satan (attribute)
mary.pet = satan

# frank is-a Employee
frank = Employee.new("Frank", 120000)

# frank has-a pet set to rover (attribute)
frank.pet = rover

# flipper is-a Fish
flipper = Fish.new()

# crouse is-a Salmon
crouse = Salmon.new()

# harry is-a Halibut
harry = Halibut.new()
