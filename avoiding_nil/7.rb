class Person
  class NoSubscriptionError < StandardError; end

  def subscribe!
    @subscription = Subscription.new
  end

  def subscription
    @subscription or raise NoSubscriptionError
  end
end

class Subscription
end

person = Person.new
if false
  person.subscribe!
end

puts person.subscription
