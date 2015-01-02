require './lib/money'

describe Money do
  it 'multiplies by 2 and 3 for Money' do
    five = Money.dollar(5)

    expect(Money.dollar(10)).to eq five.times(2)
    expect(Money.dollar(15)).to eq five.times(3)
  end

  it 'checks for equality' do
    expect(Money.dollar(5)).to eq Money.dollar(5)
    expect(Money.dollar(5)).not_to eq Money.dollar(6)
    expect(Money.franc(5)).not_to eq Money.dollar(5)
  end

  it 'checks for currency' do
    expect(Money.dollar(1).currency).to eq "USD"
    expect(Money.franc(1).currency).to eq "CHF"
  end

  it 'does simple addition' do
    five = Money.dollar(5)
    sum = five.plus(five)
    bank = Bank.new
    reduced = bank.reduce(sum, "USD")

    expect(Money.dollar(10)).to eq reduced
  end

  it 'returns a Sum when adding' do
    five = Money.dollar(5)
    sum = five.plus(five)

    expect(five).to eq sum.augend
    expect(five).to eq sum.addend
  end

  it 'reduces sum' do
    sum = Sum.new(Money.dollar(3), Money.dollar(4))
    bank = Bank.new
    result = bank.reduce(sum, "USD")

    expect(Money.dollar(7)).to eq result
  end

  it 'reduces Money' do
    bank = Bank.new
    result = bank.reduce(Money.dollar(1), "USD")

    expect(Money.dollar(1)).to eq result
  end

  it 'reduces Money with different currency' do
    bank = Bank.new
    bank.add_rate("CHF", "USD", 2)
    result = bank.reduce(Money.franc(2), "USD")

    expect(Money.dollar(1)).to eq result
  end

  it 'checks for an identity rate' do
    expect(Bank.new.rate("USD", "USD")).to eq 1
  end

  it 'does addition for mixed currencies' do
    five_bucks = Money.dollar(5)
    ten_francs = Money.franc(10)
    bank = Bank.new
    bank.add_rate("CHF", "USD", 2)
    result = bank.reduce(five_bucks.plus(ten_francs), "USD")

    expect(Money.dollar(10)).to eq result
  end

  it 'does addition for Sum' do
    five_bucks = Money.dollar(5)
    ten_francs = Money.franc(10)
    bank = Bank.new
    bank.add_rate("CHF", "USD", 2)
    sum = Sum.new(five_bucks, ten_francs).plus(five_bucks)
    result = bank.reduce(sum, "USD")

    expect(Money.dollar(15)).to eq result
  end

  it 'does multiplication for Sum' do
    five_bucks = Money.dollar(5)
    ten_francs = Money.franc(10)
    bank = Bank.new
    bank.add_rate("CHF", "USD", 2)
    sum = Sum.new(five_bucks, ten_francs).times(2)
    result = bank.reduce(sum, "USD")

    expect(Money.dollar(20)).to eq result
  end
end
