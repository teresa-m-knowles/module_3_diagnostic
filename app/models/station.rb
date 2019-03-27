class Station
  attr_reader :name,
              :address,
              :fuel_types,
              :distance,
              :access_times

  def initialize(data)
    @name = data[:name]
    @address = data[:address]
    @fuel_types = data[:fuel_types]
    @distance = data[:distance]
    @access_times = data[:access_times]
  end

end
