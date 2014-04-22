class Restaurant

  attr_reader :name, :location, :phone_number
  attr_accessor :customers, :menu, :orders

  def intilialize(name, location, phone_number)
    @name = name
    @location = location
    @phone_number = phone_number
    @menu = {}
    @orders = []
    @customers = []
    @delivery_boys = []
  end


end