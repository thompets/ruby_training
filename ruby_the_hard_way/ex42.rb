# Exercise 42: Is-A, Has-A, Objects, and Classes

## Animal is-a object look at the extra credit
class Animal
end

## Dog is-a Animal
class Dog < Animal

  def initialize(name)
    ## ??
    @name = name
  end
end

## ??
class Cat < Animal

  def initialize(name)
    ## ??
    @name = name
  end
end

## ??
class Person

  def initialize(name)
    @name = name

    ## Person has-a pet of some kind
    @pet = nilend
  end

  attr_accessor :pet
end

## ??
class Employee < Person

  def initialize(name, salary)
    ## ?? hmm what is this strange magic?
    super(name)
    ## ??
    @salary = salary
  end

end

## ??
class Fish
end

## Salmon is-a Fish
class Salmon < Fish
end

## Halibut is-a Fish
class Halibut < Fish
end


## rover is-a Dog
rover = Dog.new("Rover")

## satan is-a Cat
satan = Cat.new("Satan")

## mary is-a Person
mary = Person.new("Mary")

## ??
mary.pet = satan

## frank is-a Employee is-a Person
frank = Employee.new("Frank", 120000)

## ??
frank.pet = rover

## flipper is-a Fish
flipper = Fish.new()

## crouse is-a Salmon is-a Fish
crouse = Salmon.new()

## harry is-a Halibut is-a Fish
harry = Halibut.new()
