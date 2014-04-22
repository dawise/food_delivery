require_relative 'person'
require_relative 'employee'
require_relative 'order'

class Manager < Employee

  attr_reader :full_name, :id, :restaurant

  def initialize(first_name, last_name, password, restaurant)
    super(first_name, last_name, password, restaurant)
  end

  def add_order(customer_id, delivery_boy)
    order = Order.new(customer_id, delivery_boy)
    @restaurant.orders << order
  end

  def remove_order(index)
    @restaurant.orders.delete_at(index - 1)
  end

  def list_orders
    @restaurant.orders.each do |order|
      puts "#{order}\n
      #{order.check_status}"
    end
  end

  def add_customer(first_name, last_name)
    @restaurant.customers << Customer.new(first_name ,last_name, "nopasswordneeded", @restaurant)
  end

  def list_customers
    @restaurant.customers
  end

  def list_delivery_boys
    @restaurant.delivery_boys
  end

  def add_delivery_boy(first_name, last_name, password)
    @restaurant.delivery_boys << DeliveryBoy.new(first_name, last_name, password, @restaurant)
  end

end
