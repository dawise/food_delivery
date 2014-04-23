require_relative 'person'
require_relative 'restaurant'
require_relative 'customer'
require_relative 'delivery_boy'
require_relative 'employee'
require_relative 'manager'
require_relative 'meal'
require_relative 'order'

chez_dede = Restaurant.new("Chez Dédé", "25 rue du Petit Musc", "0147382712")

dede = Manager.new("Dédé", "Lafrite", "azerty", chez_dede)

jacques = dede.add_delivery_boy("Jacques", "Lebon", "blabla")
nicolas = dede.add_delivery_boy("Nicolas", "Lebrun", "blabla")

olivier = dede.add_customer("Olivier", "Go")
olivier.adress = "2 place charcot"
olivier.phone_num = "06 21 58 22 22"

cust2 = dede.add_customer("Robert", "Durand")
cust2.adress = "14 rue d'Alsace, Paris 3"
cust.phone_num = "06 29 58 12 32"


chez_dede.menu << Meal.new("Hamburger", 14, "junk-food")
chez_dede.menu << Meal.new("Pizza royale", 13, "italian")
chez_dede.menu << Meal.new("Pizza 4 fromages", 12, "italian")
chez_dede.menu << Meal.new("Jambon beurre", 6, "sandwich")
chez_dede.menu << Meal.new("Eclair au chocolat", 5, "dessert")
chez_dede.menu << Meal.new("Glace à la fambroise", 4, "dessert")

puts chez_dede.menu

dede.add_order(4,3).add_meal("Hamburger",2)
nouvelle_commande = dede.add_order(4,2)
nouvelle_commande.add_meal("Pizza 4 fromages",4)
nouvelle_commande

jacques.list_my_orders

nicolas.list_my_orders

nicolas.order_delivered(1)


nicolas.list_my_orders
