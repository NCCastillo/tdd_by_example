class Franc < Money

  def initialize(amount, currency)
    super
  end

  def times(multiplier)
    Franc.new(amount * multiplier, currency)
  end

end
