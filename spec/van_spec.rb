require 'van'

describe Van do 

  it { is_expected.to respond_to(:take_bike).with(1).argument }
  
  it 'releases a bike' do
  	subject.take_bike :bike
  	expect(subject.release_bike).to be :bike
  end

  it 'has a default capacity of 10' do
    expect(Van::DEFAULT_CAPACITY).to eq 10
  end

  it 'raises an error when is full' do
    Van::DEFAULT_CAPACITY.times {subject.take_bike double :bike}
    expect{subject.take_bike double :bike}.to raise_error 'Van is full'
  end

end