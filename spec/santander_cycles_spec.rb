require 'santander_cycles'

describe DockingStation do
    it 'expects object: DockingStation to respond to method: release_bike' do
        expect(subject).to respond_to :release_bike 
    end
end