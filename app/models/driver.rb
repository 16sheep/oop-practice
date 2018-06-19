class Driver
  #Has many rides
  #has many passengers through rides

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

  def passengers
    rides.map { |e| e.passenger }
  end

  def total_distance
    rides.inject{|a,b| a.distance + b.distance}
  end

  def self.milage_cap(distance)
    ALL.map { |e| e.total_distance > distance }
  end
end
