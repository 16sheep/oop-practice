class Trip
  attr_accessor :listing, :guest

  ALL = []

  def initialize
    ALL << self
  end

  def self.all
    ALL
  end
end
