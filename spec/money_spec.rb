require './lib/money'
require './lib/dollar'
require './lib/franc'

describe Money do
  context '#times' do
    it 'multiplies by 2 and 3 for Dollar' do
      five = Money.dollar(5)

      expect(Money.dollar(10)).to eq five.times(2)
      expect(Money.dollar(15)).to eq five.times(3)
    end

    it 'multiplies by 2 and 3 for Franc' do
      five = Money.franc(5)

      expect(Money.franc(10)).to eq five.times(2)
      expect(Money.franc(15)).to eq five.times(3)
    end
  end

  context 'equality' do
    it 'checks for equality' do
      expect(Money.dollar(5)).to eq Money.dollar(5)
      expect(Money.dollar(5)).not_to eq Money.dollar(6)
      expect(Money.franc(5)).to eq Money.franc(5)
      expect(Money.franc(5)).not_to eq Money.franc(6)
      expect(Money.franc(5)).not_to eq Money.dollar(5)
    end
  end

  context 'currency' do
    it 'checks for currency' do
      expect(Money.dollar(1).currency).to eq "USD"
      expect(Money.franc(1).currency).to eq "CHF"
    end
  end
end
