require './lib/dollar'

describe Dollar do
  context '#times' do
    it 'multiplies by 2 and 3' do
      five = Dollar.new(5)
      product = five.times(2)

      expect(Dollar.new(10)).to eq product
      product = five.times(3)
      # rewriting second expectation to compare Dollars to Dollars
      expect(Dollar.new(15)).to eq product
    end
  end

  context 'equality' do
    it 'checks for equality' do
      expect(Dollar.new(5)).to eq Dollar.new(5)
      expect(Dollar.new(5)).not_to eq Dollar.new(6)
    end
  end
end
