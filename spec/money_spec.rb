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
    sum = Money.dollar(5).plus(Money.dollar(5))

    expect(Money.dollar(10)).to eq sum
  end
end
