require 'journey'
require 'station'

describe Journey do
  let(:entry_station) { double :entry_station }
  let(:exit_station) { double :exit_station }

  context 'initializing with entry and exit' do
    subject { described_class.new(entry_station: entry_station, exit_station: exit_station) }
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


end