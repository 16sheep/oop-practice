class Guest
  attr_accessor :name

  ALL = []

  def initialize
    ALL << self
  end

  def self.all
    ALL
  end

  def trips
    Trip.all.select do |trip|
      trip.guest == self
    end
  end

  def listings
    trips.map {|trip| trip.listing}
  end

  def trip_count
    trips.length
  end

  def self.find_all_by_name(name)
    ALL.select {|traveller| traveller.name == name}
  end

  def self.pro_traveller
    ALL.select do |traveller|
      traveller.trips.length > 1
    end
  end
end
