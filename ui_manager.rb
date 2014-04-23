
class UIManager
  TASKS = {
    list: "- List customers [list]",
    addc: "- Add customer [addc]",
    view: "- View orders [view]",
    addo: "- Add Order [addo]",
    remove: "- Remove order [remove]",
    listemp: "- List employees [listemp]",
    exit: "- Exit [exit]"
  }

  def initialize(manager, restaurant)
    @restaurant = restaurant
    @manager = manager
    @running = true
  end

  def list
    puts @manager.list_customers
  end

  def addc
    puts "What is the first name of the customer ?"
    f_name = gets.chomp
    puts "What is the last name of the customer ?"
    l_name = gets.chomp
    @manager.add_customer(f_name,l_name)
  end

  def view
    puts "The orders are:"
    @manager.list_orders
  end

  def addo
    puts
    puts "What's the customer id ?"
    cust_id = gets.chomp.to_i
    puts "What's the delivery boy id ?"
    deliv_id = gets.chomp.to_i
    order = @manager.add_order(cust_id, deliv_id)

    begin
      puts @manager.restaurant.menu
      puts "what dish ?"
      dish = gets.chomp
      puts "how many of #{dish} ?"
      qty = gets.chomp
      order.add_meal(dish, qty)
    end until dish == ""

  end

  def remove
    puts "What's the order id ?"
    order_id = gets.chomp.to_i
    @manager.remove_order(order_id)
  end

  def listemp
    @manager.list_delivery_boys
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
