class Journey
  attr_reader :entry_station, :exit_station
  MINIMUM_FARE = 1
  PENALTY_FARE = 6

  def initialize(args = {})
    @entry_station = args[:entry_station]
    @exit_station = args[:exit_station]
  end

  def complete?
    entry_station && exit_station
  end

  def fare
    complete? ? MINIMUM_FARE : PENALTY_FARE
  end

end
