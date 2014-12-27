require './lib/dollar'

describe Dollar do
  context '#multiplication' do
    it 'multiplies by 2' do
      five = Dollar.new(5)
      five.times(2)

      expect(five.amount).to eq 10
    end
  end
end
