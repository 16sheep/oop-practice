class Actor
  # has many characters
  # has many movies through characters
  # has many shows through characters

  ALL = []

  def initialize
    ALL << self
  end

  def self.all
    ALL
  end

  def characters
    Character.all.select {|character| character.name == self.name}
  end

  def self.most_characters
    ALL.inject do |a,b|
      a.characters.length > b.characters.length ? a : b
    end
  end
  
end
