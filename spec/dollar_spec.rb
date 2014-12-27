require './lib/dollar'

describe Dollar do
  context '#multiplication' do
    it 'multiplies by 2' do
      five = Dollar.new(5)
      product = Dollar.new(five.times(2))

      expect(product.amount).to eq 10

      # expecting #times to return a new
      # Dollar object here.
      product = five.times(3)
      # test fails with undefined method `amount' for 30:Fixnum
      expect(product.amount).to eq 15
    end
  end
end
