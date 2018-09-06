require 'santander_cycles'

describe DockingStation do
    it { is_expected.to respond_to :release_bike }

    it { is_expected.to respond_to(:dock).with(1).argument }

    #it 'expects user to check if bikes are docked' do
    describe "#dock" do
      it "user checks if bikes are docked" do
        bike = Bike.new
        expect(subject.dock(bike)).to eq bike
      end

      it 'returns us all of the docked bikes at station' do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.bike).to eq bike
      end

      it "raises an error when the capacity is full" do
        subject.dock(Bike.new)
        expect { subject.dock Bike.new }.to raise_error "Sorry, the docking station is full"
      end
    end

    describe "#release_bike" do
      it "releases a bike" do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.release_bike).to eq bike
      end

      it "raises an error when there are no bikes available" do
        expect { subject.release_bike }.to raise_error "No bikes available"
      end
    end
end
