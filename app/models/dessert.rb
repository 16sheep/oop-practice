class Dessert
# has many ingredients
# belongs to bakery
  attr_accessor :bakery

  ALL = []

  def initialize
    ALL << self
  end

  def self.all
    ALL
  end

  def ingredients
    Ingredients.all.select do |ingredient|
      ingredient.dessert == self
    end
  end

  def calories
    ingredients.inject do |sum, el|
      sum.calorie_count + el.calorie_count
    end
  end
end
