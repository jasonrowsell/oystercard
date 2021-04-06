require 'errors'

class Oystercard
  attr_reader :balance
  MAXIMUM_LIMIT = 90
  
  def initialize
    @balance = 0
  end

  def top_up(value)
    raise ValueError if balance + value > MAXIMUM_LIMIT
    @balance += value
  end

  def deduct(value)
    @balance -= value
  end

end
