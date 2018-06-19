class Creator
  attr_accessor :project, :user

  ALL = []

  def initialize(project, user)
    @project = project
    @user = user
    ALL << self
  end

  def self.all
    ALL
  end
end
