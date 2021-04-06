require 'oystercard'

describe Oystercard do
  it 'allows the user to create an instance of Oystercard' do
    is_expected.to be_instance_of Oystercard
  end

  it { is_expected.to respond_to :balance }

  describe '#balance' do
    it 'returns a default balance of zero' do
      expect(subject.balance).to eq 0
    end
  end
    
end