
class UIDelivery
  TASKS = {
    view: "- View orders [view]",
    complete: "- Complete an order [complete]",
    exit: "- Exit [exit]"
  }

  def initialize(delivery_boy)
    @delivery_boy = delivery_boy
    @running = true
  end

  def view
    puts "Your orders are:"
    @delivery_boy.list_my_orders
  end

  def complete
    puts "What is the order id?"
    order_id = gets.chomp
    @delivery_boy.order_delivered(order_id)
  end

  def exit
    @running = false
  end

  def user_input
    gets.chomp
  end

  def display
    puts "Your options are:"

    while @running
      print "\n"

      display_tasks
      dispatch(user_input)

      print "\n"
    end
  end

  def display_tasks
    puts "What do you want to do? \n"
    puts TASKS.values
  end

  def dispatch(task)
    self.send(task.to_sym)
  end
end
