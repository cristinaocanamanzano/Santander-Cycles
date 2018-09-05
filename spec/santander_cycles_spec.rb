require 'santander_cycles'

describe DockingStation do
    it 'expects object: DockingStation to respond to method: release_bike' do
        expect(subject).to respond_to :release_bike 
    end

    it 'expects release_bike to instantiate new Bike class' do
        bike = Bike.new
        expect(bike.working?).to eq true
    end

    it 'expects to be able to dock bikes to Docking Station' do
        
    end
end