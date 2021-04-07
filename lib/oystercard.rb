require_relative 'errors'
require_relative 'journey'

class Oystercard
  attr_reader :balance, :entry_station, :exit_station, :journeys

  BALANCE_LIMIT = 90
  MINIMUM_FARE = 1
  
  def initialize
    @balance = 0
    @entry_station = nil
    @exit_station = nil
    @journeys = []
  end

  def top_up(amount)
    raise MaximumBalanceError if max_balance?(amount)
    @balance += amount
  end

  def touch_in(station)
    raise MinimumBalanceError if min_balance?
    @entry_station = station
  end

  def touch_out(station)
    deduct(MINIMUM_FARE)
    @exit_station = station
    log_journey
    @entry_station = nil
  end

  def in_journey?
    !!entry_station
  end

  def log_journey
    journeys << {entry_station: entry_station, exit_station: exit_station}
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

end
