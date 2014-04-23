
def check_username(restaurant)
  puts "Please enter your username:"
  access = false
  begin
    user_input = gets.chomp

    restaurant.managers.each do |manager|
      access = true if manager.username == user_input
    end

    restaurant.delivery_boys.each do |delivery_boy|
      access = true if delivery_boy.username == user_input
    end

    puts "Your entered a wrong username. Please try again" if access == false

  end until access == true

  user_input
end