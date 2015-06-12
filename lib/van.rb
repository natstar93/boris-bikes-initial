require_relative 'bike'

class Van
  DEFAULT_CAPACITY = 10
  def initialize
    @bikes = []  
  end 

  def take_bike bike
  	fail 'Van is full' if @bikes.count >= 10
  	@bikes.push bike
  end

  def release_bike
  	@bikes.pop
  end
end