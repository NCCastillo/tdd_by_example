class Money

  attr_reader :amount, :currency

  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end

  def self.dollar(amount)
    Money.new(amount, "USD")
  end

  def self.franc(amount)
    Money.new(amount, "CHF")
  end

  def ==(other)
    amount == other.amount && currency == other.currency
  end

  def times(multiplier)
    Money.new(amount * multiplier, currency)
  end

  def plus(addend)
    Sum.new(self, addend)
  end

end

class Bank

  def reduce(source, to)
    return source if source.instance_of? Money
    source.reduce(to)
  end

end

class Sum

  attr_reader :augend, :addend

  def initialize(augend, addend)
    @augend = augend
    @addend = addend
  end

  def reduce(to)
    amount = augend.amount + addend.amount
    Money.new(amount, to)
  end
end
