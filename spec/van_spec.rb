require 'van'

describe Van do 

  it { is_expected.to respond_to(:take_bike).with(1).argument }
  
  # it 'takes a bike' do
  #   expect(subject.take_bike :bike).to 
  # end

  it 'releases a bike' do
  	subject.take_bike :bike
  	expect(subject.release_bike).to be :bike
  end

  it 'has a default capacity of 10' do
    expect(Van::DEFAULT_CAPACITY).to eq 10
  end

end