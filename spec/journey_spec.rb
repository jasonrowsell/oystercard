require 'journey'
require 'station'

describe Journey do
  let(:entry_station) { double :entry_station }
  let(:exit_station) { double :exit_station }
  subject { 
    described_class.new(
    entry_station: entry_station, 
    exit_station: exit_station) 
  }

  context 'initializing with entry and exit' do
    it { is_expected.to be_complete }
  end

  context 'initializing without entry, with exit' do
    subject { described_class.new(exit_station: exit_station) }
    it { is_expected.to_not be_complete }
  end

  context 'initializing with extry, without exit' do
    subject { described_class.new(entry_station: entry_station) }
    it { is_expected.to_not be_complete }
  end

  describe '#fare' do
    context 'when journey is complete' do
      it 'charges the minimum fare' do
        expect(subject.fare).to eq Journey::MINIMUM_FARE
      end
    end

    context 'when journey is incomplete' do
      subject { described_class.new(exit_station: exit_station) }
      it 'charges the penalty fare' do
        expect(subject.fare).to eq Journey::PENALTY_FARE
      end
    end
  end

end