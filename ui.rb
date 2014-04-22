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

dede.add_delivery_boy("Jacques", "Lebon", "blabla")
dede.add_delivery_boy("Nicolas", "Lebrun", "blabla")

dede.add_customer("Olivier", "Go")

puts dede.list_customers