class Ride
  #belongs_to passenger
  #belongs to driver
  attr_accessor :distance, :passenger, :driver


  ALL = []

  def initialize(distance)
    @distance = distance
    ALL << self
  end

  def self.all
    ALL
  end

  def self.average_distance
    ALL.inject{|a,b| a.distance + b.distance} / ALL.length
  end

end
