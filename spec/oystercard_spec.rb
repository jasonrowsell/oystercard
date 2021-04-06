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
  
  it { is_expected.to respond_to(:top_up).with(1).argument }

  describe '#top up' do 
    it 'increases the balance' do
      expect{ subject.top_up 5 }.to change{ subject.balance }.by 5
    end
  end
    
end