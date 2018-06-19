class Ingredient
  # belongs to dessert
  attr_accessor :calorie_count, :dessert, :name

  ALL = []


  def initialize(calorie_count)
    @calorie_count = calorie_count
    ALL << self
  end

  def self.all
    ALL
  end

  def bakery
    ALL.select do |ingredient|
      

    end

  end

  def self.find_all_by_name(name)
    ALL.select do |ingredient|
      ingredient.name.include?(name)
      ingredient.name
    end
  end
end
