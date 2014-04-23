require_relative 'person'

class Employee < Person

  def initialize(first_name, last_name, password, restaurant)
    super(first_name, last_name, full_name, id)
    @username = "#{@first_name.downcase}.#{@last_name.downcase}"
    @password = password
    @restaurant = restaurant

  end

end