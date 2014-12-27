require './lib/money'
require './lib/franc'

describe Franc do
  context '#times' do
    it 'multiplies by 2 and 3' do
      five = Franc.new(5)

      expect(Franc.new(10)).to eq five.times(2)
      expect(Franc.new(15)).to eq five.times(3)
    end
  end
end
