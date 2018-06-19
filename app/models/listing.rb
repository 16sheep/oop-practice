class Listing
  attr_accessor :city

  ALL = []

  def initialize
    ALL << self
  end

  def self.all
    ALL
  end

  def trips
    Trip.all.select do |trip|
      trip.listing == self
    end
  end

  def guests
    trips.map {|trip| trip.guest}
  end

  def trip_count
    trips.length
  end

  def self.find_all_by_city(city)
    ALL.select {|listing| listing.city == city}
  end

  def self.most_popular
    ALL.inject do |a,b|
      a.trips.length > b.trips.length ? a : b
    end
  end
end
