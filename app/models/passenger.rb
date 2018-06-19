class Passenger
  #Has many rides
  #has many drivers through rides

  ALL = []

  def initialize
    ALL << self
  end

  def self.all
    ALL
  end

  def rides
    Rides.all.select do |ride|
      ride.driver == self
    end
  end

  def drivers
    rides.map { |e| e.driver  }
  end

  def total_distance
    rides.inject{|a,b| a.distance + b.distance}
  end

  def self.premium_members
    ALL.map { |e| e.total_distance > 100 }
  end

end
