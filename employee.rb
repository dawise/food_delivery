class Employee < Person

  def initialize(first_name, last_name, password)
    super(first_name, last_name, full_name, id)
    @username = username
    @password = password
  end

  def username
    "#{@first_name}.#{@last_name}"
  end

end