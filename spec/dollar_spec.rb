require './lib/dollar'

describe Dollar do
  context '#multiplication' do
    it 'multiplies by 2' do
      five = Dollar.new(5)
      five.times(2)

      expect(five.amount).to eq 10
      # weird side effect here.
      # five is no longer 5, it is actually 10
      # hence test fails!
      five.times(3)
      expect(five.amount).to eq 15
    end
  end
end
