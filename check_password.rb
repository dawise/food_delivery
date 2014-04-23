def check_password(restaurant)
  puts "Please enter your password:"
  access = false
  begin
    user_input = gets.chomp

    restaurant.managers.each do |manager|
      access = true if manager.password == user_input
    end

    restaurant.delivery_boys.each do |delivery_boy|
      access = true if delivery_boy.password == user_input
    end

    puts "Your entered a wrong password. Please try again" if access == false

  end until access == true
end