class Cli
  def run 
    puts " "
    puts "Hello to the meal helper"
    puts " "
    puts "Enter a meal name to see what this meal is about"
    @meal = gets.strip.downcase
    Api.get_meals(@meal)
    print_meals(Meal.all)
    prompt_user
    input gets.strip.downcase
    
    while input != "exit"
    if input == 'list'
      meals = Meal.select_by_name(@meal)
      print_meals(meals)
     elsif input.to_i > 0 && input.to_i < meals.length
      meal = meals[input.to_i - 1]
      Api.getMealDetails(meal)
      
    else 
      puts "Try again"
  end
  prompt_user
  input = gets.strip.downcase
  end
  puts " "
  puts "bye!"
 end
 
 def print_meal(meals)
   puts "Here are the meals listed #{@meal}"
   meals.each.with_index(1) do |meal, index|
     puts "#{index}. #{meal.name}"
   end
   puts " "
 end 
 def prompt_user
   puts " "
   puts "select a number to see a meal: type 'list'
   to see the list again, 'meal' or 'exit' to leave"
   puts " "
 end
end