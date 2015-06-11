require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20

  attr_accessor :capacity

  def initialize capacity=DEFAULT_CAPACITY
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    fail 'No bikes available' if empty?
    fail 'No working bikes available' if @bikes.none? { |bike| bike.working?}
    @bikes.pop
  end

  def dock bike
  	fail 'Docking station full' if full?
    @bikes << bike
  end

  def increase_capacity more_bikes
    self.capacity += more_bikes
  end




  private

  attr_reader :bikes

  def full?
    bikes.count >= capacity
  end

  def empty?
    bikes.empty?
  end


end