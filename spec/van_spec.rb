require 'van'

describe Van do 

  it { is_expected.to respond_to(:take_bike).with(1).argument }

	
end