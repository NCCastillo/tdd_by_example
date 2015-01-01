class Dollar < Money

  def initialize(amount, currency)
    super
  end

  def times(multiplier)
    Dollar.new(amount * multiplier, currency)
  end

end
