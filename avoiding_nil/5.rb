class Person
  attr_reader :subscription

  def subscribe!
    @subscription = Subscription.new
  end
end

class Subscription
end

person = Person.new
if false
  person.subscribe!
end

puts person.subscription
