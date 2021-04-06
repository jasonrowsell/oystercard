require 'oystercard'

describe Oystercard do
  it 'allows the user to create an instance of Oystercard' do
    is_expected.to be_instance_of Oystercard
  end

  it { is_expected.to respond_to :balance }
  it { is_expected.to respond_to(:top_up).with(1).argument }
  it { is_expected.to respond_to(:deduct).with(1).argument }
  it { is_expected.to respond_to :touch_in }
  it { is_expected.to respond_to :touch_out }

  context 'initializing class' do
    it 'returns a default balance of zero' do
      expect(subject.balance).to eq 0
    end
  end

  describe '#top_up' do
    context 'topping-up with none, or sufficient funds' do
      it 'increases the balance by top_up amount' do
        expect{ subject.top_up(5) }.to change { subject.balance }.by 5 
      end
    end

    context 'topping-up with maximum funds' do
      it 'raises an error' do
        max_value = Oystercard::MAXIMUM_LIMIT
        subject.top_up(max_value)
        expect{ subject.top_up 1 }.to raise_error MaximumLimitError
      end
    end
  end

  describe '#deduct' do
    context 'deducting balance with sufficient funds' do
      it 'reduces the balance' do
        subject.top_up 10
        expect{ subject.deduct 5 }.to change{ subject.balance }.by -5
      end
    end

    context 'deducting balance with no funds' do
      it 'raises an error' do
        expect{ subject.deduct 5 }.to raise_error MinimumLimitError
      end
    end
  end

end
