class Api
  def self.get_meals(name)
    url = "https://www.themealdb.com/api/json/v1/1/search.php?s=#{name}"
    response = Net::HTTP.get(URI(url))
    meals = JSON.parse(response)["meals"]
    meals.each do |meal_details|
      Meal.new(name: meal_details["strMeal"], meal_id: meal_details["idMeal"])
    end
    binding.pry
  end
end