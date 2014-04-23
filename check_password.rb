def check_password
puts  "Please enter your password:"
  begin

    user_input = gets.chomp

    if array1.each {|manager| manager.password == user_input}
      access = true

    elsif array2.each {|delivery_boy| delivery_boy.password == user_input}
      access = true

    else
      access = false
      "Your entered a wrong password. Please try again"
    end

  end if access

end