class Meal
  
  attr_accessor :name, :drink_id, :ingredient, :instructions
  
  @@all = []
  
  def initialize(name:, meal_id:)
 @name = name
 @meal_id = meal_id

 @@all << self
 end
 def self.all 
  @@all
 end

end