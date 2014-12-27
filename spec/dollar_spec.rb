require './lib/dollar'

describe Dollar do
  context '#times' do
    it 'multiplies by 2 and 3' do
      five = Dollar.new(5)
      product = five.times(2)

      expect(product.amount).to eq 10

      product = five.times(3)

      expect(product.amount).to eq 15
    end
  end

  context 'equality' do
    it 'checks for equality' do
      expect(Dollar.new(5)).to eq Dollar.new(5)
      expect(Dollar.new(5)).not_to eq Dollar.new(5)
    end
  end
end
