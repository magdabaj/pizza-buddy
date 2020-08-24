require 'pizza'

RSpec.describe Pizza do
  describe 'SIZES' do
    it 'should hold the available pizza sizes' do
      expect(described_class::SIZES).to eq [:large, :medium, :small]
    end
  end
  describe '.disallowed_toppings' do
    it 'should filter a list of toppings, returning the disallowed ones' do
      expect(described_class.disallowed_toppings(['mushrooms', 'tomato sauce'])).to be_empty
      expect(described_class.disallowed_toppings(['gold', 'forgiveness'])).to eq ['gold', 'forgiveness']
      expect(described_class.disallowed_toppings(['mushrooms', 'forgiveness'])).to eq ['forgiveness']
    end
  end
end