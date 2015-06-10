require_relative 'bike'

class DockingStation

  def release_bike
    #Bike.new
    fail 'No bikes available' unless @bike
    @bike
  end

  def dock bike
  	fail 'Docking station full' if @bike
    @bike = bike
  end


end