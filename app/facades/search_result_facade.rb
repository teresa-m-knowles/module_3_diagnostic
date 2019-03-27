class SearchResultFacade

  attr_reader :zip_code

  def initialize(zip)
    @zip_code = zip
  end

  def stations_count
    stations.count
  end

  def stations
    response = service.get_stations(@zip)
    response.map do |station_info|
      Station.new(station_info)
    end
  end

  def service
    NRELService.new
  end
end
