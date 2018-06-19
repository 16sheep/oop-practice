# class Bakery
#   # has many desserts
#   # has many ingredients through desserts
#
#   ALL = []
#
#   def initialize
#     ALL << self
#   end
#
#   def self.all
#     ALL
#   end
#
#   def ingredients
#     dess
#     end
#   end
#
#   def desserts
#     Desserts.all.select do |dessert|
#       dessert.bakery == self
#   end
#
#   def average_calories
#     total_calories = desserts.map do |e|
#       e.calories
#     end
#     total_calories.inject do |sum, el|
#       sum + el
#     end.to_f / arr.size
#   end
#
#   def shopping_list
#     ingredients.map { |e| e.name }
#   end
#
# end
#
#
#
# [[1, user:"Tom", ingredient],[2],[3,],[4],[5]]
