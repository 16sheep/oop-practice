class Character
  # belongs to movie
  # belongs to show
  # belongs to actor

  attr_accessor :name, :actor, :movie, :show

  ALL = []

  def initialize(name)
    @name = name
    ALL << self
  end

  def self.all
    ALL
  end
  
  def self.most_apperances
    grouped_characters = ALL.group_by{|character| character.name}
    grouped_characters.max_by{|k,v| v.length}.name
  end

end
