class Movie
  # has many characters
  # has many actors through characters
  attr_accessor :name

  ALL =[]

  def initialize
    ALL << self
  end

  def self.all
    ALL
  end

  def self.find_by_name(name)
    ALL.any? { |e| e.name == name }
  end

  def characters
    Character.all.select {|character| character.movie == self}
  end

  def actors
    characters.map {|character| character.actor}
  end

  def self.most_actors
    ALL.inject { |a,b|
      a.actors.length > b.actors.length ? a : b
    }
  end
end
