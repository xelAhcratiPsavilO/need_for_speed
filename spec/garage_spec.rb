require 'garage'

describe Garage do

  describe '#release_car' do
    it 'raises an error if there are no cars in the garage' do
      expect { subject.release_car }.to raise_error 'No cars available'
    end
    it 'releases a car' do
      car = subject.release_car
      expect(car).to be_working
    end
  end

  describe '#park_car' do
    it 'parks a car' do
      car = subject.release_car
      expect(subject.park_car(car)).to eq car
    end
  end

  describe '#car' do
    it 'shows parked cars' do
      car = subject.release_car
      subject.park_car(car)
      expect(subject.car).to eq car
    end
  end

end
