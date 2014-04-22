class Order

attr_accessor :done, :late, :delivery_time

  @@id = 0

  def initialize(customer_id, delivery_boy, restaurant)
    @meals = {}
    @id = @@id + 1
    @@id += 1
    @total_price = 0
    @customer_id = customer_id
    @delivery_boy_id = delivery_boy_id
    @order_time = Time.now
    @deadline = @order_time + (5 * 60)
    @delivery_time = "Not delivered yed"
    @late = false
    @done = false
    @restaurant = restaurant

    @restaurants.customers.each do |customer|
      if @customer_id == customer.id
        @customer_name = customer.full_name
        @customer_phone = customer.phone_num
        @customer_adress = customer.adress
      end
    end
    @restaurants.delivery_boys.each do |delivery_boy|
      if @delivery_boy_id == delivery_boy.id
        @delivery_boy_name = delivery_boy.full_name
      end
    end
  end

  def add_meal(meal, quantity)
    @meals[meal] = quantity.to_i

    "You've just added #{quantity} #{meal}"
  end

  def compute_total_price
    @meals.each do |meal, quantity|
      @total_price += (quantity * meal.price)
    end
  end

  def check_status
    #TODO update @late
    unless done == true
      @late = true if @deadline < Time.now
    else
      @late = true if @deadline < @delivery_time
    end

    if @late && @done
      "Delivered late"
    elsif @late == false && @done
      "Delivered on time"
    elsif @late && @done == false
      "Late and not delivered"
    else
      "Delivering in progress"
    end
  end


  def to_s
    " Order : #{@id}\n
      Customer : #{@customer_name} \n
      Customer phone : #{@customer_phone} \n
      Customer adress : #{@customer_adress} \n
      Delivery boy : #{@delivery_boy_name} \n
      Order time : #{@order_time} \n
      Delivery time : #{@delivery_time} \n

      "
  end



end