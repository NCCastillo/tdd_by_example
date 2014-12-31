class Franc < Money

  def initialize(amount)
    @amount = amount
    @currency = "CHF"
  end

  def currency
    @currency
  end

  def times(multiplier)
    Franc.new(amount * multiplier)
  end

end
