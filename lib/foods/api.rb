class Api
  def self.get_meals(name)
    url = "https://www.themealdb.com/api/json/v1/1/search.php?s=#{name}"
    response = Net::HTTP.get(URI(url))
    meals = JSON.parse(response)["meals"]
    meals.each do |meal_details|
      name = meal_details["strMeal"]
      meal_id = meal_details["idMeal"]
      Meal.new(name: name, meal_id: meal_id)
    end
  end
  
  def self.getMealDetails(meals)
    url = "https://www.themealdb.com/api/json/v1/1/lookup.php?i=#{meal.meal_id}"
    response = Net::HTTP.get(URI(url))
    
end