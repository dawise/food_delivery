class Person

  attr_reader :last_name, :first_name, :full_name, :id

  @@id = 0

  def initialize(first_name, last_name, password, restaurant)
  @first_name = first_name
  @last_name = last_name
  @password = password
  @restaurant = restaurant
  @full_name = "#{@first_name} #{@last_name}"
  @id = @@id +1
  @@id += 1
  end

  def to_s
    "#{@id}: #{@full_name}"
  end

end