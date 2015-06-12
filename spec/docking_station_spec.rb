require 'docking_station'

describe DockingStation do

  
  it {is_expected.to respond_to :release_bike}

  it 'releases working bikes' do
    bike = double :bike, working?: true
    subject.dock bike 
    expect(subject.release_bike).to be bike
  end

  it 'does not release broken bikes' do
    subject.dock double :bike, working?: false
    expect { subject.release_bike }.to raise_error 'No bikes available'
  end
  
  it 'does not release broken bikes when a mix of broken and working bikes are available' do
    subject.dock double :bike, working?: false
    subject.dock double :bike, working?: true
    subject.dock double :bike, working?: false
    expect { subject.release_bike }.to_not raise_error
    expect { subject.release_bike }.to raise_error 'No bikes available'
  end

  it {is_expected.to respond_to(:dock).with(1).argument}

  describe 'release_bike' do
    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  describe 'dock' do
    it 'raises an error when is full' do
      subject.capacity.times {subject.dock :bike}
      expect { subject.dock :bike }.to raise_error 'Docking station full'
    end
  end

  it 'has a default capacity' do
  	expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

 # it {is_expected.to respond_to(:increase_capacity).with(1).argument}  

  #describe 'increase_capacity' do
  #  it 'increases capacity by 10' do
  #    expect(subject.increase_capacity(10)).to eq 30
  #  end
  #end
  

end


