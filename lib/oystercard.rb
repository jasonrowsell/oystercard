require_relative 'errors'

class Oystercard
  attr_reader :balance
  MAXIMUM_LIMIT = 90
  
  def initialize
    @balance = 0
  end

  def top_up(amount)
    raise MaximumLimitError if limit_exceeded?(amount)
    @balance += amount
  end

  def deduct(amount)
    raise MinimumLimitError if no_funds?(amount)
    @balance -= amount
  end

  def touch_in
  end

  def touch_out
  end

  def in_journey?
  end

  private 
  def limit_exceeded?(amount)
    balance + amount > MAXIMUM_LIMIT
  end

  def no_funds?(amount)
    balance - amount < 0
  end
end
