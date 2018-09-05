puts "File is Loaded..."

class DockingStation
    attr_reader :bike

    def release_bike
        Bike.new
    end

    def dock(bike)
       @bike = bike
    end
end

class Bike
    def working?
        true 
    end
end


# docking_station = DockingStation.new

# puts docking_station.respond_to? :release_bike