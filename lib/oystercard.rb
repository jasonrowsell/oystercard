require_relative 'errors'
require_relative 'journey'

class Oystercard
  attr_reader :balance, :journeys, :journey_class
  attr_accessor :in_journey

  def initialize(journey_class = Journey)
    @balance = 0
    @journeys = []
    @journey_class = journey_class
    @in_journey = false
  end

  BALANCE_LIMIT = 90
  MINIMUM_FARE = 1

  def top_up(amount)
    raise MaximumBalanceError if max_balance?(amount)
    @balance += amount
  end

  def touch_in(station)
    raise MinimumBalanceError if min_balance?
    deduct(Journey::PENALTY_FARE) if in_journey?
    start_journey(:entry_station, station)
    @in_journey = true
  end

  def touch_out(station)
    in_journey? ? deduct(MINIMUM_FARE) : deduct(Journey::PENALTY_FARE)
    end_journey(:exit_station, station)
    @in_journey = false
  end

  private 

  def max_balance?(amount)
    balance + amount > BALANCE_LIMIT
  end

  def min_balance?
    balance < MINIMUM_FARE
  end

  def deduct(amount)
    raise MinimumBalanceError if min_balance?
    @balance -= amount
  end

  def in_journey?
    in_journey
  end

  def start_journey(position, station)
    journeys << journey_class.new(position => station)
  end

  def end_journey(position, station)
    if @journeys.empty? || @journeys.last.complete?
      journeys << journey_class.new(position => station)
    else
      journeys.last.exit_station = station
    end
  end

end
