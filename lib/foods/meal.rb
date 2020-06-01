class Meal
  
  attr_accessor :name, :meal_id, :ingredient, :instructions
  
  @@all = []
  
  def initialize(name:, meal_id:)
 @name = name
 @meal_id = meal_id

 @@all << self
 end
 def self.all 
  @@all
 end
 def self.find_by_name(name)
   self.all.select {|meal| meal.name == name}
 end
end