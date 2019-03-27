class Station
  attr_reader :name,
              :address,
              :fuel_types,
              :distance,
              :access_times

  def initialize(data)
    @name = data[:station_name]
    @address = data[:street_address]
    @distance = data[:distance]
    @access_times = data[:access_days_time]
    @fuel_types = data[:fuel_type_code]
  end

  def fuel_types
    case @fuel_types
    when 'ELEC'
      return 'Electric'
    when 'LPG'
      return 'Propane'
    end
  end


end
