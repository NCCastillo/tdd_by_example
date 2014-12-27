class Dollar

  def initialize(amount)
    @amount = amount
  end

  def times(multiplier)
    Dollar.new(amount * multiplier)
  end

  def ==(other)
    amount == other.amount
  end

# using protected here. If we use private test fails with
# private method `amount' called for
# need to do more research about this
# look at http://www.skorks.com/2010/04/ruby-access-control-are-private-and-protected-methods-only-a-guideline/
protected
  attr_reader :amount
end
