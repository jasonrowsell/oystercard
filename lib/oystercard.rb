require_relative 'errors'

class Oystercard
  attr_reader :balance, :journey
  alias :in_journey? :journey
  BALANCE_LIMIT = 90
  
  def initialize
    @balance = 0
    @journey = false
  end

  def top_up(amount)
    raise MaximumBalanceError if max_balance?(amount)
    @balance += amount
  end

  def deduct(amount)
    raise MinimumBalanceError if min_balance?(amount)
    @balance -= amount
  end

  def touch_in
    @journey = true
  end

  def touch_out
    @journey = false
  end

  private 
  def max_balance?(amount)
    balance + amount > BALANCE_LIMIT
  end

  def min_balance?(amount)
    balance - amount < 0
  end

end
