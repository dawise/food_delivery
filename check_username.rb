def check_username
puts  "Please enter your username:"
  begin
    user_input = gets.chomp
    if array1.each {|manager| manager.username == user_input}
      person = "manager"
      access = true
    elsif array2.each {|delivery_boy| delivery_boy.username == user_input}
      person = "delivery boy"
      access = true
    else
      access = false
      "Your entered a wrong username. Please try again"
    end
    person
  end if access
end