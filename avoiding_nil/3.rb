class Person
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.find(id)
    people = {1 => new("paul"), 2 => new("josh")}
    people.fetch(id)
  end
end

class ApplicationsController
  def create(person_id)
    person = Person.find(person_id)
    Application.create_for_person(person)
  end
end

class Application
  def self.create_for_person(person)
    create!(person: person, person_name: person.name)
  end

  def self.create!(*args)
    "Application Created!"
  end
end

puts ApplicationsController.new.create(1)
puts ApplicationsController.new.create(2)

puts ApplicationsController.new.create(3)
