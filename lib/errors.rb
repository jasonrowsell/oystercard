class MaximumBalanceError < StandardError
  attr_reader :msg

  def initialize(msg = "Maximum limit of #{ :MAXIMUM_LIMIT } reached")
    super(msg)
  end
end

class MinimumBalanceError < StandardError
  attr_reader :msg

  def initialize(msg = "You do not have enough funds, please top-up your oystercard")
    super(msg)
  end
end
