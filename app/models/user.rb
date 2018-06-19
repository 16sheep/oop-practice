class User
# has many pledges
# has many projects through pledges
# belongs to project??

  attr_accessor :project, :name

    ALL = []

    def initialize(name)
      @name = name
      ALL << self
    end

    def self.all
      ALL
    end

    def pledges
      Pledge.all.select do |pledge|
        pledge.user == self
      end
    end

    def highest
      highest_pledge = pledges.max_by{|pledge| pledge.amount}
      highest_pledge.amount
    end

    def self.highest_pledge
      self.all.max_by {|user| user.highest }
    end

    def projects
      pledges.map { |e| e.project  }.uniq
    end

    def self.multi_pledger
      self.all.select do |user|
        user.projects.length > 1
      end
    end

    def creator
      Creator.all.select do |creator|
        creator.user == self
      end
    end

    def self.project_creator
      self.all.select do |user|
        user.creator.length > 0
      end
    end



  # def ingredients
  #   Ingredients.all.select do |ingredient|
  #     ingredient.dessert == self
  #   end
  # end
  #
  # def calories
  #   ingredients.inject do |sum, el|
  #     sum.calorie_count + el.calorie_count
  #   end
  # end
end
