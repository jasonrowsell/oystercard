require_relative 'errors'
require_relative 'journey'

class Oystercard
  attr_reader :balance, :journeys, :in_journey, :journey_class

  def initialize(journey_class = Journey.new)
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
    start_journey(:entry_station, station)
    @in_journey = true
  end

  def touch_out(station)
    deduct(MINIMUM_FARE)
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


end
