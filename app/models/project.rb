class Project
  # Has many pledges
  # Has many users through pledges
  # belongs_to user
  attr_accessor :name, :goal

  ALL = []

  def initialize(name, goal)
    @name = name
    @goal = goal
    ALL << self
  end

  def self.all
    ALL
  end

  def pledges
    Pledge.all.select do |pledge|
      pledge.project == self
    end
  end

  def self.no_pledges
    self.all.select do |project|
      project.pledges.length > 0
    end
  end

  def pledge_amounts
    self.pledges.reduce(0, :+)
  end

  def self.above_goal
    self.all.select do |project|
      project.goal >= project.pledge_amounts
    end
  end

  def backers
    pledges.map { |e| e.user }.uniq
  end

  def self.most_backers
    self.all.max_by {|project| project.backers.length}
  end

end
