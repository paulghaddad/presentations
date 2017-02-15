class Person
end

class Subscription
  attr_reader :person

  def initialize(person)
    @person = person
  end
end


person = Person.new

subscription = Subscription.new(person)

puts subscription.person
