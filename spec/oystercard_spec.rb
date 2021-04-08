require 'oystercard'
require 'journey'

describe Oystercard do
  let(:entry_station) { double(:entry_station) }
  let(:exit_station) { double(:exit_station) }
  let(:journey) { {entry_station: entry_station, exit_station: exit_station} }

  it 'allows the user to create an instance of Oystercard' do
    is_expected.to be_instance_of Oystercard
  end

  it { is_expected.to respond_to :balance }
  it { is_expected.to respond_to(:top_up).with(1).argument }
  it { is_expected.to respond_to(:touch_in).with(1).argument }
  it { is_expected.to respond_to :touch_out }

  context 'initializing class' do
    it 'returns a default balance of zero' do
      expect(subject.balance).to eq 0
    end

    it 'is formally not in a journey' do
      expect(subject).not_to be_in_journey
    end
  end

  describe '#top_up' do
    context 'topping-up with none, or sufficient funds' do
      it 'increases the balance by top_up amount' do
        expect{ subject.top_up(5) }.to change { subject.balance }.by 5 
      end
    end

    context 'topping-up with maximum funds' do
      before {
        max_value = Oystercard::BALANCE_LIMIT
        subject.top_up(max_value) }
        it 'raises an error' do
          expect{ subject.top_up 1 }.to raise_error MaximumBalanceError
        end
    end
  end

  describe '#touch_in' do
    context 'sufficient balance' do
      before { 
        subject.top_up(5)
        subject.touch_in(entry_station) }
        it 'touches in' do
          expect(subject.entry_station).not_to be_nil
        end
    end

    context 'insufficient balance' do
      it 'will not touch in if below minimum balance' do
        expect{ subject.touch_in(entry_station) }.to raise_error MinimumBalanceError
      end
    end
  end

  describe '#touch_out' do
    context 'having completed a journey' do
      before {
        subject.top_up(10)
        subject.touch_in(entry_station)
        subject.touch_out(entry_station)
      }
      it 'should removes journey status after touching out' do
        expect(subject.in_journey?).to eq false
      end

      it 'deducts minimum fare from balance' do
        expect{ subject.touch_out(entry_station) }.to change { subject.balance }.by(-described_class::MINIMUM_FARE)
      end
    end
  end

  describe '#journeys' do
    context 'when initialized' do
        it 'is empty' do
          expect(subject.journeys).to be_empty
        end
      end

    context 'after completing a journey' do
      before {
        subject.top_up(5)
        subject.touch_in(entry_station)
        subject.touch_out(exit_station)
      }
      it 'stores the journey log' do
        expect(subject.journeys).not_to be_empty
      end

      it 'stores the correct journey' do
        expect(subject.journeys).to include(journey)
      end
    end
  end
end
