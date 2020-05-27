class Foods
  attr_accessor :name, :ingredient, :instructions, :meal_id
  
  @@all = []
  
  def initialize(name, meal_id)
    @name = name
  @meal_meal = meal_id
  
  @@all << self
 end

def self.all
  @@all
  end

end