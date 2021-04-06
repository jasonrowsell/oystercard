require 'oystercard'

class ValueError < StandardError
  attr_reader :msg

  def initialize(msg = "Maximum limit of #{ :MAXIMUM_LIMIT } reached")
    super(msg)
  end
end
