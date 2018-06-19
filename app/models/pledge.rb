class Pledge
  attr_accessor :project, :user, :amount

  ALL = []

  def initialize(project, user, amount)
    @project = project
    @user = user
    @amount = amount.to_i
    ALL << self
  end

  def self.all
    ALL
  end
end
