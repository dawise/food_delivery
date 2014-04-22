class Restaurant

  attr_reader :name, :location, :phone_number
  attr_accessor :nb_custumers, :nb_employees, :menu

  def intilialize(name, location, phone_number, nb_custumers, nb_employees)
    @name = name
    @location = location
    @phone_number = phone_number
    @nb_custumers = nb_custumers
    @nb_employees = nb_employees
    @menu = {}
  end

end