class Franc < Money

  def initialize(amount, currency)
    super
  end

  def times(multiplier)
    Money.new(amount * multiplier, currency)
  end

end
