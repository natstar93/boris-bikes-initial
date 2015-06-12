require_relative 'bike'

class Van
  DEFAULT_CAPACITY = 10

  def take_bike bike
  	@bike = bike
  end

  def release_bike
  	@bike
  end
end