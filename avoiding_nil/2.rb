class Person
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.find(id)
    people = {1 => new("paul"), 2 => new("josh")}
    people[id]
  end
end

p Person.find(1)
p Person.find(2)
# p Person.find(3)
