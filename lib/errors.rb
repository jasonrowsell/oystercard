require 'oystercard'

class MaximumLimitError < StandardError
  attr_reader :msg

  def initialize(msg = "Maximum limit of #{ :MAXIMUM_LIMIT } reached")
    super(msg)
  end
end

class MinimumLimitError < StandardError
  attr_reader :msg

  def initialize(msg = "You have no funds, please top-up your oystercard")
    super(msg)
  end
end
