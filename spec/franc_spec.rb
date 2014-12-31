require './lib/money'
require './lib/franc'
require './lib/dollar'

describe Franc do
  context '#times' do
    it 'multiplies by 2 and 3' do
      five = Money.franc(5)

      expect(Money.franc(10)).to eq five.times(2)
      expect(Money.franc(15)).to eq five.times(3)
    end
  end

  context 'equality' do
    it 'checks for equality' do
      expect(Money.franc(5)).to eq Money.franc(5)
      expect(Money.franc(5)).not_to eq Money.franc(6)
      expect(Money.franc(5)).not_to eq Money.dollar(5)
    end
  end
end
