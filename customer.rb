require_relative 'manager'

class Customer < Person

  def initialize(last_name, first_name, restaurant)
    super(last_name, first_name, id, full_name)
    @adress = adress
    @phone_num = phone_num
    @delivery_history = []
    @restaurant = restaurant
  end

  def display_orders_history
    @restaurant.orders.each do |order|
      puts order if order.customer_id == @id
    end
  end

end
