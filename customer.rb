require_relative 'person'

class Customer < Person

  attr_reader :full_name, :phone_num, :adress
  attr_accessor :phone_num, :adress

  def initialize(last_name, first_name, password, restaurant)
    super(last_name, first_name, password, restaurant)
    @adress = "Pas d'adresse"
    @phone_num = 0
    @delivery_history = []
  end

  def display_orders_history
    @restaurant.orders.each do |order|
      puts order if order.customer_id == @id
    end
  end

end
