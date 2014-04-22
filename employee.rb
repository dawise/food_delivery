require_relative 'person'

class Employee < Person

  def initialize(first_name, last_name, password, restaurant)
    super(first_name, last_name, full_name, id)
    @username = username
    @password = password
    @restaurant = restaurant
  end

  def username
    "#{@first_name.downcase}.#{@last_name.downcase}"
  end

end