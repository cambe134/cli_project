class Cli
  def run 
    puts " "
    puts "Hello to the meal helper"
    puts " "
    puts "Enter a meal name to see what this meal is about"
    @food = gets.strip.downcase
    Api.get_meal(@food)
  end
end