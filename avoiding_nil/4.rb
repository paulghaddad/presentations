class Person
  attr_reader :subscription

  def subscribe!
    @subscription = Subscription.new
  end
end

class Subscription
end

person = Person.new
person.subscribe!

puts person.subscription
