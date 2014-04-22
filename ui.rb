require_relative 'manager'


restaurant1 = Restaurant.new

manager1 = Manager.new

manager1.add_order


display_history_orders(manager1.restaurant)
#Manager.add_order

# puts "Which meal ?"
#     meal = gets.chomp
#     puts "Which qty ?"
#     quantity = gets.chomp
#     order.add_meal(meal, quantity)