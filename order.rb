class Order

attr_accessor :done, :late

  @@id = 0

  def initialize(customer_id, delivery_boy)
    @meals = {}
    @id = @@id + 1
    @@id += 1
    @total_price = 0
    @customer_id = customer_id
    @delivery_boy_id = delivery_boy_id
    @order_time = Time.now
    @delivery_time = @order_time + (5 * 60)
    @late = false
    @done = false
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
      @late = true if @delivery_time < Time.now
    else
      @late = true if @delivery_time < #missing variable
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
    " Order : #{@id} \n
      Customer : #{} \n
      Customer adress : #{} \n
      Delivery boy : #{} \n
      Order time : #{} \n
      Delivery time : #{} \n

      "
  end



end