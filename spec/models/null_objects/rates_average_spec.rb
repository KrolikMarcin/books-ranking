require 'rails_helper'

RSpec.describe NullObjects::RatesAverage do
  subject { described_class.new }

  describe '#round' do
    it 'returns 0' do
      expect(subject.round).to eq(0)
    end
  end
end
