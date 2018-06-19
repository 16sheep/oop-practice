class Show
  # has many characters
  # has many actors through characters
  attr_accessor :name

  ALL = []

  def initialize
    ALL << self
  end

  def self.all
    ALL
  end

  def self.on_the_big_screen
    ALL.select do |show|
      Movie.find_by_name(show.name)
    end
  end

end
