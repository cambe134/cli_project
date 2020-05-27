class Api
  def self.get_meal(name)
    url = "https://www.themealdb.com/api/json/v1/1/search.php?s=#{name}"
    response = Net::HTTP.get(URI(url))
   meal = JSON.parse(response)["meal"][0]
   meal.each do |meal_details|
   Meal.new(meal_details)
    binding.pry
    Meal.new(name, meal_id)
    end
  end
end