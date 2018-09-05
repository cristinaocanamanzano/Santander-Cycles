require 'santander_cycles'

describe DockingStation do
    it { is_expected.to respond_to :release_bike }

    it 'expects release_bike to instantiate new Bike class' do
        bike = Bike.new
        expect(bike.working?).to eq true
    end

    
    it { is_expected.to respond_to(:dock).with(1).argument }

    it 'expects user to check if bikes are docked' do
        bike = Bike.new
        expect(subject.dock(bike)).to eq bike
    end

    it 'returns us all of the docked bikes at station' do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.bike).to eq bike
    end

end