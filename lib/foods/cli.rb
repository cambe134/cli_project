class Cli
  def run 
    puts " "
    puts "Hello to the meal helper"
    puts " "
    puts "Enter a meal name to see what this meal is about"
    @meal = gets.strip.downcase
    Api.get_meals(@meal)
    print_meals(@meal)
  end
  def print_meals(meal)
    puts" "
    puts "Meal types"
    meals.each.with_index(1) do |meal, index|
      puts "#{index}. #{meal.name}"
    end
    puts " "
 end
end