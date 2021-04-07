require 'oystercard'

class Journey
  attr_reader :entry_station, :exit_station

  def initialize(args = {})
    @entry_station = args[:entry_station]
    @exit_station = args[:exit_station]
  end

  def complete?
    entry_station && exit_station
  end

  def in_journey?
    !!entry_station
  end

end