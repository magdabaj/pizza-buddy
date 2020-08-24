require 'pizza'

RSpec.describe Pizza do
  describe 'SIZES' do
    it 'should hold the available pizza sizes' do
      expect(described_class::SIZES).to eq [:large, :medium, :small]
    end
  end
end