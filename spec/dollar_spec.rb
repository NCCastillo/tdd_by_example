require './lib/money'
require './lib/dollar'
require './lib/franc'

describe Dollar do
  context '#times' do
    it 'multiplies by 2 and 3' do
      five = Money.dollar(5)

      expect(Dollar.new(10)).to eq five.times(2)
      expect(Dollar.new(15)).to eq five.times(3)
    end
  end

  context 'equality' do
    it 'checks for equality' do
      expect(Dollar.new(5)).to eq Dollar.new(5)
      expect(Dollar.new(5)).not_to eq Dollar.new(6)
      expect(Dollar.new(5)).not_to eq Franc.new(5)
    end
  end
end
