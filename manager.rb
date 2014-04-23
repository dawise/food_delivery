require_relative 'person'
require_relative 'employee'
require_relative 'order'

class Manager < Employee

  attr_reader :full_name, :id, :restaurant, :username, :password, :status

  def initialize(first_name, last_name, password, restaurant)
    super(first_name, last_name, password, restaurant)
    @restaurant.managers << self
    @username = "#{@first_name.downcase}.#{@last_name.downcase}"
    @status = "MANAGER"
  end

  def add_order(customer_id, delivery_boy)
    order = Order.new(customer_id, delivery_boy, @restaurant)
    @restaurant.orders << order
    order
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
    new_customer = Customer.new(first_name ,last_name, "nopasswordneeded", @restaurant)
    @restaurant.customers << new_customer
    new_customer
  end

  def list_customers
    @restaurant.customers
  end

  def list_delivery_boys
    @restaurant.delivery_boys
  end

  def add_delivery_boy(first_name, last_name, password)
    new_boy = DeliveryBoy.new(first_name, last_name, password, @restaurant)
    @restaurant.delivery_boys << new_boy
    new_boy
  end

end
