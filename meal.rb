class Meal

  attr_reader :price, :name, :type_of_food

  def initialize(name, price, type_of_food)
    @name = name
    @price = price.to_i
    @type_of_food = type_of_food
  end

  def to_s
    "#{@name} (#{@type_of_food}) : #{@price}"
  end

end