require_relative 'order'

class DeliveryBoy < Employee

  def initialize(first_name, last_name, password, restaurant)
    super(username, password, full_name, id)
    @restaurant = restaurant
  end

  def list_my_orders
    @restaurant.orders.each do |order|
      puts order if order.delivery_boy_id == @id
    end

  end

  def order_delivered(order_id)

    @restaurant.orders.each do |order|

      if order.id == order_id
        order.done = true
        order.delivery_time = Time.now
      end
    end


  end

end
