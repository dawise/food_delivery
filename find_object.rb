def find_object(string, restaurant)

object = 0

  restaurant.managers.each do |manager|
   object = manager if manager.username == string
  end

  restaurant.delivery_boys.each do |delivery_boy|
    object = delivery_boy if delivery_boy.username == string
  end

  object

end
