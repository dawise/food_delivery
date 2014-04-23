class Restaurant

  attr_reader :name, :location, :phone_number
  attr_accessor :customers, :menu, :orders, :delivery_boys, :managers

  def initialize(name, location, phone_number)
    @name = name
    @location = location
    @phone_number = phone_number
    @menu = []
    @orders = []
    @customers = []
    @delivery_boys = []
    @managers = []
  end


end