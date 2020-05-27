class Api
  def self.get_meals(name)
    url = "https://www.themealdb.com/api/json/v1/1/search.php?s=#{name}"
    response = Net::HTTP.get(URI(url))
   meals = JSON.parse(response)["meals"][0]
   meals.each |meal_details|
   Meal.new(meal_details)
    binding.pry
    Meal.new(meal_details)
    end
  end
end